# CallerClass

[![Build Status](https://travis-ci.org/kami30k/caller_class.svg)](https://travis-ci.org/kami30k/caller_class)
[![Gem Version](https://badge.fury.io/rb/caller_class.svg)](http://badge.fury.io/rb/caller_class)

CallerClass provides the way that to get caller class name that is calling from the body of a class definition.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'caller_class'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install caller_class

## Usage

Extend CallerClass module and call `caller_class`.
This method returns a class name calling the method.

## Example

Call from the body of a class definition:

```ruby
class Foo
  extend CallerClass

  p caller_class #=> "Foo"
end
```

Call from the body of a nested class definition:

```ruby
class Foo
  class Bar
    extend CallerClass

    caller_class #=> "Bar"
  end
end
```

Call from extended class:

```ruby
module Foo
  include CallerClass

  def foo
    p caller_class #=> "Bar"
  end
end

class Bar
  extend Foo

  foo
end
```

## Contributing

1. Fork it ( https://github.com/kami30k/caller_class/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
