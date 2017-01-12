# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poparser/version'

Gem::Specification.new do |spec|
  spec.name          = "experteer-poparser"
  spec.version       = PoParser::VERSION
  spec.authors       = ["Dennis-Florian Herr"]
  spec.email         = ["dennis.herr@experteer.com"]
  spec.summary       = %q{A PO file parser, editor and generator.}
  spec.description   = %q{A PO file parser, editor and generator. PO files are translation files generated by GNU/Gettext tool.}
  spec.homepage      = "http://github.com/experteer/poparser"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  # Runtime deps
  spec.add_runtime_dependency "parslet", "~> 1.7"

  # Development deps
  spec.add_development_dependency "bundler", ">= 0"
  spec.add_development_dependency "rake", ">= 0"
  # geminabox release
  spec.add_development_dependency 'geminabox-release', "0.2.1"
end
