# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jruby_zemberek/version'

Gem::Specification.new do |spec|
  spec.name          = "jruby_zemberek"
  spec.version       = JrubyZemberek::VERSION
  spec.authors       = ["Nurettin Onur TUĞCU"]
  spec.email         = ["onurtugcu@gmail.com"]
  spec.summary       = %q{Zemberek 2.0 interface for JRuby.}
  spec.description   = %q{This is a gem for making it easy to call zemberek2 2.1.1 NLP library functions from JRuby.}
  spec.homepage      = "https://github.com/nurettin/jruby_zemberek"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
