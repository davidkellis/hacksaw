
# This is a quick and dirty implementation of XML Schema 1.0
# based off of http://www.w3schools.com/Schema/default.asp

module Hacksaw
  module XML
    NS_XS = 'http://www.w3.org/2001/XMLSchema'
    
    module All
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def element
        extend_children_with_tag(NS_XS, 'element', SchemaElement)
      end
    end
    
    module Annotation
      include XML::Element
      
      def appInfo
        extend_children_with_tag(NS_XS, 'appInfo', AppInfo)
      end
      
      def documentation
        extend_children_with_tag(NS_XS, 'documentation', Documentation)
      end
    end
    
    module Any
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module AnyAttribute
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module AppInfo
      include XML::Element
    end
    
    module Attribute
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
    end
    
    module AttributeGroup
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def attribute
        extend_children_with_tag(NS_XS, 'attribute', Attribute)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end
      
      def anyAttribute
        extend_children_with_tag(NS_XS, 'anyAttribute', AnyAttribute)
      end
    end
    
    module Choice
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end

      def element
        extend_children_with_tag(NS_XS, 'element', SchemaElement)
      end

      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end

      def choice
        extend_children_with_tag(NS_XS, 'choice', Choice)
      end
      
      def sequence
        extend_children_with_tag(NS_XS, 'sequence', Sequence)
      end
      
      def any
        extend_children_with_tag(NS_XS, 'any', Any)
      end
    end

    module ComplexContent
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def restriction
        extend_children_with_tag(NS_XS, 'restriction', ComplexContentRestriction)
      end
      
      def extension
        extend_children_with_tag(NS_XS, 'extension', Extension)
      end
    end
    
    module ComplexType
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def simpleContent
        extend_children_with_tag(NS_XS, 'simpleContent', SimpleContent)
      end
      
      def complexContent
        extend_children_with_tag(NS_XS, 'complexContent', ComplexContent)
      end

      def restriction
        extend_children_with_tag(NS_XS, 'restriction', ComplexTypeRestriction)
      end

      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end
      
      def all
        extend_children_with_tag(NS_XS, 'all', All)
      end
      
      def choice
        extend_children_with_tag(NS_XS, 'choice', Choice)
      end
      
      def sequence
        extend_children_with_tag(NS_XS, 'sequence', Sequence)
      end

      def attribute
        extend_children_with_tag(NS_XS, 'attribute', Attribute)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end

      def anyAttribute
        extend_children_with_tag(NS_XS, 'anyAttribute', AnyAttribute)
      end
    end
    
    module Documentation
      include XML::Element
    end
    
    module SchemaElement
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
      
      def complexType
        extend_children_with_tag(NS_XS, 'complexType', ComplexType)
      end
      
      def unique
        extend_children_with_tag(NS_XS, 'unique', Unique)
      end
      
      def key
        extend_children_with_tag(NS_XS, 'key', Key)
      end
      
      def keyref
        extend_children_with_tag(NS_XS, 'keyref', Keyref)
      end
    end
    
    module Extension
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end
      
      def all
        extend_children_with_tag(NS_XS, 'all', All)
      end
      
      def choice
        extend_children_with_tag(NS_XS, 'choice', Choice)
      end
      
      def sequence
        extend_children_with_tag(NS_XS, 'sequence', Sequence)
      end
      
      def attribute
        extend_children_with_tag(NS_XS, 'attribute', Attribute)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end

      def anyAttribute
        extend_children_with_tag(NS_XS, 'anyAttribute', AnyAttribute)
      end
    end
    
    module Field
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module Group
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def all
        extend_children_with_tag(NS_XS, 'all', All)
      end
      
      def choice
        extend_children_with_tag(NS_XS, 'choice', Choice)
      end
      
      def sequence
        extend_children_with_tag(NS_XS, 'sequence', Sequence)
      end
    end
    
    module Import
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module Include
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module Key
      include XML::Element

      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end

      def selector
        extend_children_with_tag(NS_XS, 'selector', Selector)
      end

      def field
        extend_children_with_tag(NS_XS, 'field', Field)
      end
    end

    module Keyref
      include XML::Element

      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end

      def selector
        extend_children_with_tag(NS_XS, 'selector', Selector)
      end

      def field
        extend_children_with_tag(NS_XS, 'field', Field)
      end
    end

    module List
      include XML::Element

      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end

      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
    end
    
    module Notation
      include XML::Element

      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module Redefine
      include XML::Element

      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
      
      def complexType
        extend_children_with_tag(NS_XS, 'complexType', ComplexType)
      end
      
      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end
    end
    
    module Restriction
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module SimpleTypeRestriction
      include Restriction
      
      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
      
      # The following restrictions are documented at the following:
      # XSD Restrictions/Facets for Datatypes: http://www.w3schools.com/Schema/schema_elements_ref.asp
      
      def minExclusive
      end
      
      def minInclusive
      end
      
      def maxExclusive
      end
      
      def maxInclusive
      end
      
      def totalDigits
      end
      
      def fractionDigits
      end
      
      def length
      end
      
      def minLength
      end
      
      def maxLength
      end
      
      def enumeration
      end
      
      def whiteSpace
      end
      
      def pattern
      end
    end
    
    module SimpleContentRestriction
      include SimpleTypeRestriction
      
      def attribute
        extend_children_with_tag(NS_XS, 'attribute', Attribute)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end
      
      def anyAttribute
        extend_children_with_tag(NS_XS, 'anyAttribute', AnyAttribute)
      end
    end
    
    module ComplexContentRestriction
      include Restriction
      
      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end
      
      def all
        extend_children_with_tag(NS_XS, 'all', All)
      end
      
      def choice
        extend_children_with_tag(NS_XS, 'choice', Choice)
      end
      
      def sequence
        extend_children_with_tag(NS_XS, 'sequence', Sequence)
      end

      def attribute
        extend_children_with_tag(NS_XS, 'attribute', Attribute)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end
      
      def anyAttribute
        extend_children_with_tag(NS_XS, 'anyAttribute', AnyAttribute)
      end
    end

    # Based off of http://www.w3schools.com/Schema/el_schema.asp
    module Schema
      include XML::Element
      
      def include
        extend_children_with_tag(NS_XS, 'include', Include)
      end
      
      def import
        extend_children_with_tag(NS_XS, 'import', Import)
      end
      
      def redefine
        extend_children_with_tag(NS_XS, 'redefine', Redefine)
      end
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
      
      def complexType
        extend_children_with_tag(NS_XS, 'complexType', ComplexType)
      end
      
      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end
      
      def attributeGroup
        extend_children_with_tag(NS_XS, 'attributeGroup', AttributeGroup)
      end
      
      def element
        extend_children_with_tag(NS_XS, 'element', SchemaElement)
      end
      
      def attribute
        extend_children_with_tag(NS_XS, 'attribute', Attribute)
      end
      
      def notation
        extend_children_with_tag(NS_XS, 'notation', Notation)
      end
    end
    
    module Selector
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
    end
    
    module Sequence
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end

      def element
        extend_children_with_tag(NS_XS, 'element', SchemaElement)
      end

      def group
        extend_children_with_tag(NS_XS, 'group', Group)
      end

      def choice
        extend_children_with_tag(NS_XS, 'choice', Choice)
      end
      
      def sequence
        extend_children_with_tag(NS_XS, 'sequence', Sequence)
      end
      
      def any
        extend_children_with_tag(NS_XS, 'any', Any)
      end
    end
    
    module SimpleContent
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def restriction
        extend_children_with_tag(NS_XS, 'restriction', SimpleContentRestriction)
      end
      
      def extension
        extend_children_with_tag(NS_XS, 'extension', Extension)
      end
    end
    
    module SimpleType
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def restriction
        extend_children_with_tag(NS_XS, 'restriction', SimpleTypeRestriction)
      end
      
      def list
        extend_children_with_tag(NS_XS, 'list', List)
      end
      
      def union
        extend_children_with_tag(NS_XS, 'union', Union)
      end
    end
    
    module Union
      include XML::Element
      
      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end
      
      def simpleType
        extend_children_with_tag(NS_XS, 'simpleType', SimpleType)
      end
    end
    
    module Unique
      include XML::Element

      def annotation
        extend_children_with_tag(NS_XS, 'annotation', Annotation)
      end

      def selector
        extend_children_with_tag(NS_XS, 'selector', Selector)
      end

      def field
        extend_children_with_tag(NS_XS, 'field', Field)
      end
    end
  end
end