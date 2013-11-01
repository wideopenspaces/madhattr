# Madhattr

[![Version](http://allthebadges.io/wideopenspaces/madhattr/badge_fury.png)](http://allthebadges.io/wideopenspaces/madhattr/badge_fury)
[![Dependencies](http://allthebadges.io/wideopenspaces/madhattr/gemnasium.png)](http://allthebadges.io/wideopenspaces/madhattr/gemnasium)
[![Build Status](http://allthebadges.io/wideopenspaces/madhattr/travis.png)](http://allthebadges.io/wideopenspaces/madhattr/travis)
[![Coverage](http://allthebadges.io/wideopenspaces/madhattr/coveralls.png)](http://allthebadges.io/wideopenspaces/madhattr/coveralls)
[![Code Climate](http://allthebadges.io/wideopenspaces/madhattr/code_climate.png)](http://allthebadges.io/wideopenspaces/madhattr/code_climate)

Basic accessors (readers/writers) for hash elements, such as options hashes!

## Installation

Add this line to your application's Gemfile:

    gem 'madhattr', require: false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install madhattr

## Usage

It's easy: when you intend to use it

    require 'madhattr/hattr_accessor'

and then, in your class:

    extend HattrAccessor

    hattr_reader :source_hash, *keys_to_be_accessorized

e.g.,

    hattr_reader :animals, :cat, :bird, :dog, :snake

You can also create writers using `hattr_writer` or both readers and writers using `hattr_accessor`.

Enjoy!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
