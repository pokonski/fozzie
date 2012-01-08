# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fozzie/version"

Gem::Specification.new do |s|
  s.name        = "fozzie"
  s.version     = Fozzie::VERSION
  s.authors     = ["Marc Watts"]
  s.email       = ["marcky.sharky@gmail.com"]
  s.summary     = %q{Statsd gem bolt-on}
  s.description = %q{Gem allows statistics gathering from Ruby and Ruby on Rails applications to Statsd}

  s.rubyforge_project = "fozzie"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'statsd-ruby'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'syntax'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sinatra'
  s.add_development_dependency 'actionpack'
end
