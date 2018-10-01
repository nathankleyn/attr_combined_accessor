# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(__dir__, 'lib'))

Gem::Specification.new do |gem|
  gem.name = 'attr_combined_accessor'
  gem.version = '1.1.0'
  gem.homepage = 'https://github.com/nathankleyn/attr_combined_accessor'
  gem.license = 'MIT'

  gem.authors = ['Nathan Kleyn']
  gem.email = ['nathan@nathankleyn.com']
  gem.summary = 'Combined reader/writer accessors in Ruby, ideal for chaining or DSLs.'
  gem.description = <<~DESC
    Combined reader/writer accessors in Ruby, ideal for chaining or DSLs. This
    is useful for when you want to expose a DSL to an external file (think
    Rakefile like setup) and want to hide the fact the code is actually running
    inside a class with a structure.
  DESC

  gem.files = Dir['**/*'].select { |d| d =~ %r{^(README.md|lib/)} }

  gem.add_development_dependency 'coveralls', '~> 0.8.22'
  gem.add_development_dependency 'filewatcher', '~> 1.1', '>= 1.1.1'
  gem.add_development_dependency 'pry-byebug', '~> 3.6', '>= 3.6.0'
  gem.add_development_dependency 'rspec', '~> 3.8', '>= 3.8.0'
  gem.add_development_dependency 'rubocop', '~> 0.59.2'
  gem.add_development_dependency 'rubocop-rspec', '~> 1.29', '>= 1.29.1'
end
