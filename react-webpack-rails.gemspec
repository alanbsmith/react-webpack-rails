# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'react/webpack/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "react-webpack-rails"
  spec.version       = React::Webpack::Rails::VERSION
  spec.authors       = ["Alan Smith"]
  spec.email         = ["a.bax.smith@gmail.com"]

  spec.summary       = "Integration tool for React + Webpack with Rails"
  spec.description   = ""
  spec.homepage      = "https://github.com/alanbsmith/react-webpack-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir[ "lib/**/*", "README.md", "LICENSE"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
