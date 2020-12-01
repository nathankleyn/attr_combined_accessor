# attr_combined_accessor [![Build Status](https://github.com/nathankleyn/attr_combined_accessor/workflows/Tests/badge.svg)](https://github.com/nathankleyn/attr_combined_accessor/actions?query=workflow%3ATests) [![Coverage Status](https://coveralls.io/repos/github/nathankleyn/attr_combined_accessor/badge.svg?branch=master)](https://coveralls.io/github/nathankleyn/attr_combined_accessor?branch=master) [![RubyGems Version](https://img.shields.io/gem/v/attr_combined_accessor.svg)](https://rubygems.org/gems/attr_combined_accessor)

Combined reader/writer accessors in Ruby, ideal for chaining or DSLs.

## Installing

You can install this gem via RubyGems:

```sh
gem install attr_combined_accessor
```

## Using

Sometimes you really need to be able to set and get without the limitations of Ruby's default accessors and the equals sign. This is where attr_combined_accessor comes in!

```ruby
require 'attr_combined_accessor'

class MyAmazingClass
  attr_combined_accessor :foo, :bar
end
```

And now you can use them:

```ruby
my_amazing_class = MyAmazingClass.new
my_amazing_class.foo # => nil
my_amazing_class.foo('foo')
my_amazing_class.foo # => 'foo'
```

The attr_combined_accessor gem returns `self` from the accessor, which makes chaining setters possible:

```ruby
my_amazing_class = MyAmazingClass.new
my_amazing_class.foo('foo').bar('bar')
my_amazing_class.foo # => 'foo'
my_amazing_class.bar # => 'bar'
```

It also creates the standard `attr_writer` for the places where you want readability and don't need the DSL or chaining style:

```ruby
my_amazing_class = MyAmazingClass.new
my_amazing_class.foo = 'foo'
my_amazing_class.foo # => 'foo'
my_amazing_class.foo('notfoo!')
my_amazing_class.foo # => 'notfoo!'
```

## License

This project is licensed [via MIT license](LICENSE).
