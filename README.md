# BatchSequencer

[![Build
Status](https://travis-ci.org/michaelkelly322/batch_sequencer.svg)](https://travis-ci.org/michaelkelly322/batch_sequencer)
[![Code
Climate](https://codeclimate.com/github/michaelkelly322/batch_sequencer/badges/gpa.svg)](https://codeclimate.com/github/michaelkelly322/batch_sequencer)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'batch_sequencer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install batch_sequencer

## Usage

To run a sequenced batch, batch_quencer provides a simple interface:

```
BatchSequencer.run(sequence_definition)
```

A sequence definition is a hash with three key pairs:

```
{
  id: 1234, # The ActiveRecord ID associated with this sequence
  class: ActiveRecordClass, # The class of the ActiveRecord object associated with this sequnce
  jobs: [] # The structure of the job definitions is still unknown
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/batch_sequencer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

