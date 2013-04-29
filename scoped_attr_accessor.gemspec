# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scoped_attr_accessor/version'

Gem::Specification.new do |spec|
  spec.name          = "scoped_attr_accessor"
  spec.version       = ScopedAttrAccessor::VERSION
  spec.authors       = ["David Brady"]
  spec.email         = ["dbrady@shinybit.com"]
  spec.description   = %q{Adds private_attr_reader, private_attr_writer, private_attr_accessor, protected_attr_reader, protected_attr_writer, protected_attr_accessor class macros}
  spec.summary       = %q{Adds private_* and protected_* attr_reader, attr_writer, and attr_accessor}
  spec.homepage      = "https://github.com/dbrady/scoped_attr_accessor.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "debugger", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.0"
end
