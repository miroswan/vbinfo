# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'command/version'

Gem::Specification.new do |spec|
  spec.name          = "vbinfo"
  spec.version       = Vbinfo::VERSION
  spec.authors       = ["Demitri Swan"]
  spec.email         = ["demitriswan@gmail.com"]
  spec.summary       = %q{Print detailed information for virtualbox VMs managed by Vagrant}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
