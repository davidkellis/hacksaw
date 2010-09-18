require 'uuidtools'

module Hacksaw
  module XML
    UNIQUE_PREFIX = UUIDTools::UUID.random_create.to_i.to_s
    
    NS_XML = 'http://www.w3.org/XML/1998/namespace'
    NS_XSD = 'http://www.w3.org/2001/XMLSchema'
    NS_XSI = 'http://www.w3.org/2001/XMLSchema-instance'
    
    module Document
      def self.load(filename, document_uri = nil)
        file_contents = File.new(filename).read
        document = Nokogiri.XML(file_contents, document_uri).extend(self)      # returns a Nokogiri::XML::Document
        document.root.extend(Element)
        document
      end
      
      def self.extend_object(document)
        if document.is_a? Nokogiri::XML::Document
          super
        else
          raise "Hacksaw::Document should only extend instances of Nokogiri::XML::Document"
        end
      end
  
      def base(document_uri = nil)
        base_uri = attribute_with_ns("base", NS_XML) || url() || document_uri
        LegacyExtendedIRI.new(base_uri)
      end
    end

    # Element should extend Nokogiri::XML::Node objects
    module Element
      module ClassMethods
        def load_document(filename, document_uri = nil)
          file_contents = File.new(filename).read
          document = Nokogiri.XML(file_contents, document_uri).extend(Document)      # returns a Nokogiri::XML::Document
          document.root.extend(self)
          document
        end
      end
  
      def self.included(base)
        base.extend(ClassMethods)
      end

      def id
        qattr(NS_XSD, 'id')
      end
  
      # Retreives the URI associated with the xml:base attribute.
      # Documentation: http://www.w3.org/TR/xmlbase/
      # Also: http://www.w3.org/TR/2009/REC-xmlbase-20090128/
      # The value of this attribute is interpreted as a Legacy Extended IRI (LEIRI) as
      #   defined in the W3C Note "Legacy extended IRIs for XML resource identification" [LEIRI].
      # In namespace-aware XML processors, the "xml" prefix is bound to the namespace name
      #   http://www.w3.org/XML/1998/namespace as described in Namespaces in XML [XML Names].
      #
      # Returns a LegacyExtendedIRI object
      def base(document_uri = nil)
        if parent
          relative_base_uri = attribute_with_ns("base", NS_XML)
          if relative_base_uri
            parent.base(document_uri).transform_relative_reference(relative_base_uri)
          else
            parent.base(document_uri)
          end
        else
          base_uri = attribute_with_ns("base", NS_XML) || document_uri
          LegacyExtendedIRI.new(base_uri)
        end
      end
  
      # returns an array of Nokogiri::XML::Namespace objects
      def namespace_scopes
        super
      end
  
      # returns a hash of prefix/Nokogiri::XML::Namespace pairs
      def namespaces_by_prefix
        namespace_scopes.reduce({}, &->(m, ns) { m[ns.prefix]=ns; m })
      end

      # returns a hash of URI/Nokogiri::XML::Namespace pairs
      def namespaces_by_uri
        namespace_scopes.reduce({}, &->(m, ns) { m[ns.href]=ns; m })
      end

      # returns the prefix of the namespace referenced by the given URI
      # returns nil if none of the namespaces reference the given URI
      def prefix_for(ns_uri)
        if namespaces_by_uri().has_key?(ns_uri)
          namespaces_by_uri()[ns_uri].prefix || ""       # namespace.prefix returns nil if there is no prefix defined (default prefix)
        end
      end
      
      # returns the URI of the namespace referenced by the given prefix
      # returns nil if none of the namespaces reference the given prefix
      def uri_for(prefix)
        if namespaces_by_prefix().has_key?(prefix)
          namespaces_by_prefix()[prefix].href
        end
      end

      # Construct the namespace-prefix-qualified name given the document's namespaces
      # Deprecated: If the namespace isn't referenced, return an unqualified name.
      #
      # Returns a pair of the following form [element-name, prefix_to_URI-hash]
      # Example: ["prefix:name", {prefix => ns_uri}]
      def qname(ns_uri, name)
        prefix = prefix_for(ns_uri)
        
        raise "Namespace at URI=#{ns_uri} not referenced!" if prefix.nil?
        
        # if the ns_uri isn't referenced, then treat the name as an unqualified name.
        # if prefix.nil?
        #   [name, {}]
        # else
          prefix = UNIQUE_PREFIX if prefix.empty?
          ["#{prefix}:#{name}", {prefix => ns_uri}]
        # end
      end

      def qelements(ns_uri = nil, tag)
        tag, ns_map = if ns_uri
          qname(ns_uri, tag)
        else
          [tag, {}]
        end
        xpath("./#{tag}", ns_map)
      end

      # I think this does the same thing as a call to attribute_with_ns(attribute_name, ns)
      def qattr(ns, attribute_name)
        attr_name, ns_map = qname(ns, attribute_name)
        attribute = xpath("@#{attr_name}", ns_map).first    # this should return a Nokogiri::XML::Attr object if the attribute exists
        attribute.value if attribute
      end

      # Usage:
      # node1.extend_children_with_tag(NS_LINK, 'roleRef', RoleRef)
      # -> [child_node1, child_node2, ...]
      # where each of the child_nodeN objects are extended with RoleRef
      # Returns an array of child nodes (of the current root node), each of which is extended with mod
      def extend_children_with_tag(ns_uri, tag, mod)
        qelements(ns_uri, tag).to_a.map {|n| n.extend(mod) }
      end

      # Usage:
      # node1.extend_children_with_qattr(NS_XLINK, 'type', 'arc', Arc)
      # -> [child_node1, child_node2, ...]
      # where each of the child_nodeN objects are extended with Arc
      def extend_children_with_qattr(ns_uri, attribute, attribute_value, mod)
        children_with_qattr(ns_uri, attribute, attribute_value).to_a.map {|n| n.extend(mod) }
      end

      def children_with_attr(attribute, attribute_value)
        xpath("./*[@#{attribute}='#{attribute_value}']")
      end

      def children_with_qattr(ns_uri, attribute, attribute_value)
        attr_name, ns_map = qname(ns_uri, attribute)
        xpath("./*[@#{attr_name}='#{attribute_value}']", ns_map)
      end
    end
  end
end