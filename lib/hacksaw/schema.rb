
# This is a quick and dirty implementation of XML Schema 1.0
# based off of http://www.w3schools.com/Schema/default.asp

module Hacksaw
  module XML

    module All
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def element_tags
        extend_children_with_tag(NS_XSD, 'element', SchemaElement)
      end
    end
    
    module Annotation
      include Hacksaw::XML::Element
      
      def appInfo_tags
        extend_children_with_tag(NS_XSD, 'appInfo', AppInfo)
      end
      
      def documentation_tags
        extend_children_with_tag(NS_XSD, 'documentation', Documentation)
      end
    end
    
    module Any
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module AnyAttribute
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module AppInfo
      include Hacksaw::XML::Element
    end
    
    module Attribute
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
    end
    
    module AttributeGroup
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def attribute_tags
        extend_children_with_tag(NS_XSD, 'attribute', Attribute)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end
      
      def anyAttribute_tags
        extend_children_with_tag(NS_XSD, 'anyAttribute', AnyAttribute)
      end
    end
    
    module Choice
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end

      def element_tags
        extend_children_with_tag(NS_XSD, 'element', SchemaElement)
      end

      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end

      def choice_tags
        extend_children_with_tag(NS_XSD, 'choice', Choice)
      end
      
      def sequence_tags
        extend_children_with_tag(NS_XSD, 'sequence', Sequence)
      end
      
      def any_tags
        extend_children_with_tag(NS_XSD, 'any', Any)
      end
    end

    module ComplexContent
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def restriction_tags
        extend_children_with_tag(NS_XSD, 'restriction', ComplexContentRestriction)
      end
      
      def extension_tags
        extend_children_with_tag(NS_XSD, 'extension', Extension)
      end
    end
    
    module ComplexType
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def simpleContent_tags
        extend_children_with_tag(NS_XSD, 'simpleContent', SimpleContent)
      end
      
      def complexContent_tags
        extend_children_with_tag(NS_XSD, 'complexContent', ComplexContent)
      end

      def restriction_tags
        extend_children_with_tag(NS_XSD, 'restriction', ComplexTypeRestriction)
      end

      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end
      
      def all_tags
        extend_children_with_tag(NS_XSD, 'all', All)
      end
      
      def choice_tags
        extend_children_with_tag(NS_XSD, 'choice', Choice)
      end
      
      def sequence_tags
        extend_children_with_tag(NS_XSD, 'sequence', Sequence)
      end

      def attribute_tags
        extend_children_with_tag(NS_XSD, 'attribute', Attribute)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end

      def anyAttribute_tags
        extend_children_with_tag(NS_XSD, 'anyAttribute', AnyAttribute)
      end
    end
    
    module Documentation
      include Hacksaw::XML::Element
    end
    
    module SchemaElement
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
      
      def complexType_tags
        extend_children_with_tag(NS_XSD, 'complexType', ComplexType)
      end
      
      def unique_tags
        extend_children_with_tag(NS_XSD, 'unique', Unique)
      end
      
      def key_tags
        extend_children_with_tag(NS_XSD, 'key', Key)
      end
      
      def keyref_tags
        extend_children_with_tag(NS_XSD, 'keyref', Keyref)
      end
    end
    
    module Extension
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end
      
      def all_tags
        extend_children_with_tag(NS_XSD, 'all', All)
      end
      
      def choice_tags
        extend_children_with_tag(NS_XSD, 'choice', Choice)
      end
      
      def sequence_tags
        extend_children_with_tag(NS_XSD, 'sequence', Sequence)
      end
      
      def attribute_tags
        extend_children_with_tag(NS_XSD, 'attribute', Attribute)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end

      def anyAttribute_tags
        extend_children_with_tag(NS_XSD, 'anyAttribute', AnyAttribute)
      end
    end
    
    module Field
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module Group
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def all_tags
        extend_children_with_tag(NS_XSD, 'all', All)
      end
      
      def choice_tags
        extend_children_with_tag(NS_XSD, 'choice', Choice)
      end
      
      def sequence_tags
        extend_children_with_tag(NS_XSD, 'sequence', Sequence)
      end
    end
    
    module Import
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module Include
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module Key
      include Hacksaw::XML::Element

      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end

      def selector_tags
        extend_children_with_tag(NS_XSD, 'selector', Selector)
      end

      def field_tags
        extend_children_with_tag(NS_XSD, 'field', Field)
      end
    end

    module Keyref
      include Hacksaw::XML::Element

      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end

      def selector_tags
        extend_children_with_tag(NS_XSD, 'selector', Selector)
      end

      def field_tags
        extend_children_with_tag(NS_XSD, 'field', Field)
      end
    end

    module List
      include Hacksaw::XML::Element

      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end

      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
    end
    
    module Notation
      include Hacksaw::XML::Element

      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module Redefine
      include Hacksaw::XML::Element

      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
      
      def complexType_tags
        extend_children_with_tag(NS_XSD, 'complexType', ComplexType)
      end
      
      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end
    end
    
    module Restriction
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module SimpleTypeRestriction
      include Restriction
      
      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
      
      # The following restrictions are documented at the following:
      # XSD Restrictions/Facets for Datatypes: http://www.w3schools.com/Schema/schema_elements_ref.asp
      
      def minExclusive_tags
      end
      
      def minInclusive_tags
      end
      
      def maxExclusive_tags
      end
      
      def maxInclusive_tags
      end
      
      def totalDigits_tags
      end
      
      def fractionDigits_tags
      end
      
      def length_tags
      end
      
      def minLength_tags
      end
      
      def maxLength_tags
      end
      
      def enumeration_tags
      end
      
      def whiteSpace_tags
      end
      
      def pattern_tags
      end
    end
    
    module SimpleContentRestriction
      include SimpleTypeRestriction
      
      def attribute_tags
        extend_children_with_tag(NS_XSD, 'attribute', Attribute)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end
      
      def anyAttribute_tags
        extend_children_with_tag(NS_XSD, 'anyAttribute', AnyAttribute)
      end
    end
    
    module ComplexContentRestriction
      include Restriction
      
      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end
      
      def all_tags
        extend_children_with_tag(NS_XSD, 'all', All)
      end
      
      def choice_tags
        extend_children_with_tag(NS_XSD, 'choice', Choice)
      end
      
      def sequence_tags
        extend_children_with_tag(NS_XSD, 'sequence', Sequence)
      end

      def attribute_tags
        extend_children_with_tag(NS_XSD, 'attribute', Attribute)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end
      
      def anyAttribute_tags
        extend_children_with_tag(NS_XSD, 'anyAttribute', AnyAttribute)
      end
    end

    # Based off of http://www.w3schools.com/Schema/el_schema.asp
    module Schema
      include Hacksaw::XML::Element
      
      def self.load_document(filename, document_uri = nil)
        file_contents = File.new(filename).read
        document = Nokogiri.XML(file_contents, document_uri).extend(Document)      # returns a Nokogiri::XML::Document
        document.root.extend(self)
        
        # See http://www.w3schools.com/Schema/el_schema.asp
        # For the xmlns attribute of the schema element is a:
        # A URI reference that specifies one or more namespaces for use in this schema.
        # If no prefix is assigned, the schema components of the namespace can be used with unqualified references
        # document.root.default_namespace = NS_XSD unless document.root.namespaces.include?('xmlns')
        document
      end
      
      def include_tags
        extend_children_with_tag(NS_XSD, 'include', Include)
      end
      
      def import_tags
        extend_children_with_tag(NS_XSD, 'import', Import)
      end
      
      def redefine_tags
        extend_children_with_tag(NS_XSD, 'redefine', Redefine)
      end
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
      
      def complexType_tags
        extend_children_with_tag(NS_XSD, 'complexType', ComplexType)
      end
      
      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end
      
      def attributeGroup_tags
        extend_children_with_tag(NS_XSD, 'attributeGroup', AttributeGroup)
      end
      
      def element_tags
        extend_children_with_tag(NS_XSD, 'element', SchemaElement)
      end
      
      def attribute_tags
        extend_children_with_tag(NS_XSD, 'attribute', Attribute)
      end
      
      def notation_tags
        extend_children_with_tag(NS_XSD, 'notation', Notation)
      end
      
      # non-Schema items
      
      # The schema (http://www.w3.org/TR/xmlschema-1/#normative-schemaSchema) for XML Schema specifies
      # that instances of XML Schema (i.e. schema documents that conform to XML Schema) can make unqualified references to
      # the elements and attributes defined in the XML Schema specification. This is true because the attributes
      # elementFormDefault and attributeFormDefault default to 'unqualified'.
      #
      # For the reason given in the above paragraph, we need to search for unqualified references to the substitutionGroup
      # attribute of the 'element' element (which is defined in XML Schema).
      def substitution_groups
        element_tags.select {|n| n.has_attribute?('substitutionGroup') }.map {|n| n.attr('substitutionGroup') }.uniq
      end

      # Identifies element definitions that are a part of the given substitution group
      #
      # Arguments:
      #   substitution_group_element_name - The head element tag name
      #   substitution_group_element_ns - optional - The namespace URI which identifies the prefix that the
      #                                              element tag name should be prefixed with.
      #   include_head_element - optional - Should the returned list of element definitions include the head of the substitution group?
      #
      # Note: substitution_group_element_name may be prefixed, in which case substitution_group_element_ns should be nil. If
      #       substitution_group_element_ns is not nil, then the prefix assocated with the substitution_group_element_ns will be
      #       used as the element prefix when searching for members of the substitution group element definitions.
      def elements_in_substitution_group(substitution_group_element_name, substitution_group_element_ns = nil, include_head_element = true)
        sg_prefix, sg_tag_name = if substitution_group_element_ns.nil?
          if substitution_group_element_name.index(':')
            substitution_group_element_name.split(':', 2)
          else
            [nil, substitution_group_element_name]
          end
        else
          [prefix_for(substitution_group_element_ns), substitution_group_element_name]
        end
        
        group_elements = if sg_prefix.nil? || sg_prefix.empty?
          children_with_attr('substitutionGroup', "#{sg_tag_name}").to_a
        else
          children_with_attr('substitutionGroup', "#{sg_prefix}:#{sg_tag_name}").to_a
        end
        
        if include_head_element
          # Return a new NodeSet built by merging the group_elements NodeSet and the NodeSet consisting of the substitution
          # group head element.
          
          head_element_nodeset = if sg_prefix.nil?
            qelements(sg_tag_name)
          else
            qelements(uri_for(sg_prefix), sg_tag_name)
          end
          
          group_elements | head_element_nodeset
        else
          group_elements
        end
      end
    end
    
    module Selector
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
    end
    
    module Sequence
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end

      def element_tags
        extend_children_with_tag(NS_XSD, 'element', SchemaElement)
      end

      def group_tags
        extend_children_with_tag(NS_XSD, 'group', Group)
      end

      def choice_tags
        extend_children_with_tag(NS_XSD, 'choice', Choice)
      end
      
      def sequence_tags
        extend_children_with_tag(NS_XSD, 'sequence', Sequence)
      end
      
      def any_tags
        extend_children_with_tag(NS_XSD, 'any', Any)
      end
    end
    
    module SimpleContent
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def restriction_tags
        extend_children_with_tag(NS_XSD, 'restriction', SimpleContentRestriction)
      end
      
      def extension_tags
        extend_children_with_tag(NS_XSD, 'extension', Extension)
      end
    end
    
    module SimpleType
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def restriction_tags
        extend_children_with_tag(NS_XSD, 'restriction', SimpleTypeRestriction)
      end
      
      def list_tags
        extend_children_with_tag(NS_XSD, 'list', List)
      end
      
      def union_tags
        extend_children_with_tag(NS_XSD, 'union', Union)
      end
    end
    
    module Union
      include Hacksaw::XML::Element
      
      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end
      
      def simpleType_tags
        extend_children_with_tag(NS_XSD, 'simpleType', SimpleType)
      end
    end
    
    module Unique
      include Hacksaw::XML::Element

      def annotation_tags
        extend_children_with_tag(NS_XSD, 'annotation', Annotation)
      end

      def selector_tags
        extend_children_with_tag(NS_XSD, 'selector', Selector)
      end

      def field_tags
        extend_children_with_tag(NS_XSD, 'field', Field)
      end
    end
  end
end