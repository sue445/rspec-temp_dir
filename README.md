# Rspec::TempDir

create automatically temporary directory at each examples

This is inspired by Junit [TemporaryFolder](http://junit.org/javadoc/4.9/org/junit/rules/TemporaryFolder.html)

[![Gem Version](https://badge.fury.io/rb/rspec-temp_dir.svg)](http://badge.fury.io/rb/rspec-temp_dir)
[![Build Status](https://travis-ci.org/sue445/rspec-temp_dir.svg)](https://travis-ci.org/sue445/rspec-temp_dir)
[![Code Climate](https://codeclimate.com/github/sue445/rspec-temp_dir.png)](https://codeclimate.com/github/sue445/rspec-temp_dir)
[![Coverage Status](https://img.shields.io/coveralls/sue445/rspec-temp_dir.svg)](https://coveralls.io/r/sue445/rspec-temp_dir)
[![Dependency Status](https://gemnasium.com/sue445/rspec-temp_dir.svg)](https://gemnasium.com/sue445/rspec-temp_dir)

## Requirements
* ruby 1.9.3, 2.x
* rspec 2.x, 3.0.0

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-temp_dir'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-temp_dir

## Usage

```ruby
require 'rspec/temp_dir'

describe "uses temp dir" do
  include_context "uses temp dir"

  it "should create temp_dir" do
    expect(Pathname(temp_dir)).to be_exist
  end

  it "can create file in temp_dir" do
    temp_file = "#{temp_dir}/temp.txt"

    File.open(temp_file, "w") do |f|
      f.write("foo")
    end

    expect(File.read(temp_file)).to eq "foo"
  end
end
```

## Changelog
### master
[full changelog](http://github.com/sue445/rspec-temp_dir/compare/v0.0.2...master)

### v0.0.2
[full changelog](http://github.com/sue445/rspec-temp_dir/compare/v0.0.1...v0.0.2)

* bugfix: raise error when padrino and rspec3+
  * https://github.com/sue445/rspec-temp_dir/pull/1

### v0.0.1
* first release

## Contributing

1. Fork it ( https://github.com/sue445/rspec-temp_dir/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
