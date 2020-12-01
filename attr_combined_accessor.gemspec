# frozen_string_literal: true

Gem::Specification.new do |gem|
  gem.name = 'attr_combined_accessor'
  # If current commit is tagged, that will be our version.
  # Otherwise we'll get some suffixed version, eg. 1.1.2-1-g0fc2ecd
  # Which represents a "distance" we are away from the last tag.
  #
  # Notice we tag as 'v1.2.3' but the gemspec expects just '1.2.3' so
  # we have to strip the prefix.
  gem.version = `git describe --tags`.chomp.delete_prefix('v')
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

  gem.required_ruby_version = '>= 2.7.2'

  gem.add_development_dependency 'filewatcher', '~> 1.1', '>= 1.1.1'
  gem.add_development_dependency 'pry-byebug', '~> 3.9', '>= 3.9.0'
  gem.add_development_dependency 'rspec', '~> 3.10', '>= 3.10.0'
  gem.add_development_dependency 'rubocop', '~> 1.4', '>= 1.4.2'
  gem.add_development_dependency 'rubocop-rspec', '~> 2.0', '>= 2.0.0'
  gem.add_development_dependency 'simplecov', '~> 0.20', '>= 0.20.0'
  gem.add_development_dependency 'simplecov-lcov', '~> 0.8', '>= 0.8.0'
end
