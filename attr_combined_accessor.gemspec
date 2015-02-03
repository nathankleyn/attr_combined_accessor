$LOAD_PATH.unshift(File.join(__dir__, 'lib'))

Gem::Specification.new do |gem|
  gem.name = 'attr_combined_accessor'
  gem.version = '1.0.0'
  gem.homepage = 'https://github.com/nathankleyn/attr_combined_accessor'
  gem.license = 'MIT'

  gem.authors = [
    'Nathan Kleyn'
  ]
  gem.email = [
    'nathan@nathankleyn.com'
  ]
  gem.summary = 'Combined reader/writer accessors in Ruby, ideal for chaining or DSLs.'
  gem.description = "See #{gem.homepage} for more information!"

  gem.files = Dir['**/*'].select { |d| d =~ /^(README.md|lib\/)/ }

  gem.add_development_dependency 'coveralls', '~> 0.7'
  gem.add_development_dependency 'filewatcher', '~> 0.3'
  gem.add_development_dependency 'pry-byebug', '~> 2.0'
  gem.add_development_dependency 'rspec', '~> 3.1'
  gem.add_development_dependency 'rubocop', '~> 0.28'
  gem.add_development_dependency 'rubocop-rspec', '~> 1.2'
end
