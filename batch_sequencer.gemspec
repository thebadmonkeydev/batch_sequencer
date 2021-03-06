# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'batch_sequencer/version'

Gem::Specification.new do |spec|
  spec.name          = 'batch_sequencer'
  spec.version       = BatchSequencer::VERSION
  spec.authors       = ['Michael Kelly']
  spec.email         = ['michaelkelly322@gmail.com']

  spec.summary       = 'Complex workflow management in Sidekiq'
  spec.description   = 'Enables the execution of complex workflows (mixed parallel and sequential execution tasks) using Sidekiq'
  spec.homepage      = 'https://github.com/michaelkelly322/batch_sequencer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '1.9'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_runtime_dependency 'sidekiq'
end
