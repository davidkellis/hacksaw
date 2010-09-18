$: << File.join(File.expand_path(File.dirname(__FILE__)), "..", "lib")

require 'test/unit'
require 'hacksaw'
require 'pp'

class TestSchema < Test::Unit::TestCase
  def test_schema
    # path = File.join(File.expand_path(File.dirname(__FILE__)), 'simple_schema.xml')
    # doc = Hacksaw::XML::Schema.load_document(path)
    # pp doc.root.element_tags

    path = File.join(File.expand_path(File.dirname(__FILE__)), 'xbrl-instance-2003-12-31.xsd')
    doc = Hacksaw::XML::Schema.load_document(path, path)
    
    assert_equal 10, doc.root.element_tags.count
  end
  
  def test_taxonomy_schema
    path = File.join(File.expand_path(File.dirname(__FILE__)), 'us-gaap-2009-01-31.xsd')
    doc = Hacksaw::XML::Schema.load_document(path, path)
    
    # pp doc.root.substitution_groups
    # pp doc.root.elements_in_substitution_group('item', 'http://www.xbrl.org/2003/instance').count
    # pp doc.root.elements_in_substitution_group('xbrli:item').count
    
    assert_equal 13452, doc.root.element_tags.count
    assert_equal 3, doc.root.substitution_groups.count
    assert_equal 12935, doc.root.elements_in_substitution_group('item', 'http://www.xbrl.org/2003/instance').count
    assert_equal 12935, doc.root.elements_in_substitution_group('xbrli:item').count
  end
end
