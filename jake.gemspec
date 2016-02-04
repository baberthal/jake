# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jake/version'

Gem::Specification.new do |spec|
  spec.name          = 'jake'
  spec.version       = Jake::VERSION
  spec.authors       = ['J. Morgan Lieberthal']
  spec.email         = ['morgan@jmorgan.org']

  spec.summary       = 'A command-line tool for CMake files and tests.'
  spec.homepage      = 'https://github.com/baberthal/jake'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
