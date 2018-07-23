# FeaturedAlaArticles

This is a gem for scraping A List Apart's website for their featured articles.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'featured_ala_articles'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install featured_ala_articles

## Usage

When this gem scrapes A List Apart's website it'll return you the featured articles from their homepage and ask which one you'd like more information on. Once you let it know which article you'd like more information on, it'll return who wrote it, the date it was published, a summary of the article, and a link to open the article in your default browser.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/treverandersen/featured_ala_articles.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
