
# This is a quick and dirty implementation of XML Schema 1.0
# based off of http://www.w3schools.com/Schema/default.asp

module Hacksaw
  module XML
    NS_XS = 'http://www.w3.org/2001/XMLSchema'
    
    # Based off of http://www.w3schools.com/Schema/el_schema.asp
    module Schema
      include XML::Element
      
      module SchemaElement
        include XML::Element
        
        def annotation
        end
        
        def simpleType
        end
        
        def complexType
        end
        
        def uniques
        end
        
        def keys
        end
        
        def keyrefs
        end
      end

      def includes
      end
      
      def imports
      end
      
      def redefines
      end
      
      def annotations
      end
      
      def simpleTypes
      end
      
      def complexTypes
      end
      
      def groups
      end
      
      def attributeGroups
      end
      
      def elements
        extend_children_with_tag(NS_XS, 'element', SchemaElement)
      end
      
      def attributes
      end
      
      def notations
      end
    end
  end
end