# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)
require 'gko_spectacles/version'

Gem::Specification.new do |s|
  s.name         = "gko_spectacles"
  s.version      = GkoSpectacles::VERSION
  s.authors      = ["rb"]
  s.email        = "contact@joufdesign.com"
  s.homepage     = "http://github.com/joufdesign/gko-cms"
  s.summary      = "[summary]"
  s.description  = "[description]"

  s.files        = Dir['{app,config,lib,public}/**/*']
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'
  
  s.add_dependency 'gko_core'
  s.add_dependency 'gko_categories'
end