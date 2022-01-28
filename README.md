# CardDeck

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/card_deck`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'card_deck'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install card_deck

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/card_deck.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## The Problem

Using ruby, please code a class that represents a standard deck of playing cards.

A "standard" deck of playing cards consists of a stack of 52 Cards in each of the 4 suits of Spades, Hearts, Diamonds, and Clubs. Each suit contains 13 cards, in order of rank: 2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

Note that the deck should consider "Ace" as the highest Rank of card.

The deck should be usable for any standard card game that uses a single deck of cards, including the following capabilities:

- deal a card from the top of the deck
- return a card to the bottom of the deck
- compare cards by rank
- Include a script of tests that demonstrate the functioning of the class.

You may use additional classes as appropriate, but you should not use the Rails framework or any other third-party gems or plug-ins.
