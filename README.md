# attr_combined_accessor [![Build Status](https://travis-ci.org/nathankleyn/attr_combined_accessor.svg?branch=master)](https://travis-ci.org/nathankleyn/attr_combined_accessor) [![Coverage Status](https://coveralls.io/repos/nathankleyn/attr_combined_accessor/badge.png?branch=master)](https://coveralls.io/r/nathankleyn/attr_combined_accessor?branch=master)

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

The MIT License (MIT)

Copyright (c) 2015 Nathan Kleyn

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
