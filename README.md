# pbcopy-ruby

A simple Ruby gem that makes a global `pbcopy` function available to copy text to the system clipboard.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pbcopy-ruby'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install pbcopy-ruby
```

## Usage

After installing the gem, you can use the `pbcopy` function anywhere in your Ruby code:

```ruby
require 'pbcopy-ruby'

# Copy a string to clipboard
pbcopy("Hello, clipboard!")

# Also works with other objects that respond to to_s
pbcopy(123)
pbcopy([:a, :b, :c])

# You can chain it in expressions as it returns the input
puts pbcopy("This text is copied and printed")
```

## Note

This gem requires the `pbcopy` command, which is available by default on macOS. It will not work on other operating systems without additional configuration.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). 