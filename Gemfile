source 'https://rubygems.org'

# Specify your gem's dependencies in rspec-temp_dir.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.2.0")
  # NOTE: rake v13.0.0+ requires Ruby 2.2.0+
  gem "rake", "< 13.0.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.3.0")
  # NOTE: json 2.6.0+ requires Ruby 2.3.0+
  gem "json", "< 2.6.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.4.0")
  # NOTE: simplecov-html v0.11.0+ requires Ruby ~> 2.4
  gem "simplecov-html", "< 0.11.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.5.0")
  # NOTE: docile v1.4.0+ requires Ruby 2.5.0+
  gem "docile", "< 1.4.0"
end
