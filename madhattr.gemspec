# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'madhattr/version'

Gem::Specification.new do |spec|
  spec.name          = "madhattr"
  spec.version       = Madhattr::VERSION
  spec.authors       = ["Jacob Stetser"]
  spec.email         = ["jake@wideopenspac.es"]
  spec.description   = %q{Add accessors for a hash}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/wideopenspaces/madhattr'
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
