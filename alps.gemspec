# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alps/version'

Gem::Specification.new do |spec|
  spec.name          = "alps"
  spec.version       = Alps::VERSION
  spec.authors       = ["Thomas Beihl"]
  spec.email         = ["tmbeihl@tmbeihl.com"]

  spec.summary       = %q{The Adventist Living Pattern System packaged for the Rails Asset Pipeline}
  spec.description   = %q{The Adventist Living Pattern System is a pattern library that any Adventist church, school or institution can use.}
  spec.homepage      = "http://adventist.io"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "bourbon"
end
