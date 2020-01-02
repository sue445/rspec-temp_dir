# Rspec::TempDir

create automatically temporary directory at each examples

This is inspired by Junit [TemporaryFolder](http://junit.org/junit4/javadoc/4.12/org/junit/rules/TemporaryFolder.html)

[![Gem Version](https://badge.fury.io/rb/rspec-temp_dir.svg)](http://badge.fury.io/rb/rspec-temp_dir)
[![Build Status](https://github.com/sue445/rspec-temp_dir/workflows/test/badge.svg?branch=master)](https://github.com/sue445/rspec-temp_dir/actions?query=workflow%3Atest)
[![Code Climate](https://codeclimate.com/github/sue445/rspec-temp_dir.png)](https://codeclimate.com/github/sue445/rspec-temp_dir)
[![Coverage Status](https://img.shields.io/coveralls/sue445/rspec-temp_dir.svg)](https://coveralls.io/r/sue445/rspec-temp_dir)

## Requirements
* ruby 2.0+
* rspec 3.0.0+

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-temp_dir'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-temp_dir

## Usage
When use `include_context "uses temp dir"` , create automatically and can use `temp_dir`

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

  describe "#temp_dir_path" do
    subject{ temp_dir_path }

    it { should be_an_instance_of Pathname }
    it { should be_exist }
  end
end

describe "within temp dir" do
  # create temp dir and cd to temp dir
  include_context "within temp dir"

  it "within temp dir" do
    expect(Dir.pwd).to eq temp_dir
  end
end
```

## Contributing

1. Fork it ( https://github.com/sue445/rspec-temp_dir/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
