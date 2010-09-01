require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
  s.name = "hacksaw"
  s.summary = "An extension to Nokogiri."
  s.description= "A small library that extends Nokogiri with [better] support for XML Schema, XLink, etc."
  s.requirements = [ 'None' ]
  s.version = "0.0.1"
  s.author = "David Ellis"
  s.email = "davidkellis@gmail.com"
  s.homepage = "http://david.davidandpenelope.com"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.9'
  s.files = Dir['**/**']
  s.executables = []
  s.test_files = []
  s.has_rdoc = false
  
  s.add_runtime_dependency 'nokogiri'
  s.add_runtime_dependency 'leiri'
end

Rake::GemPackageTask.new(spec).define