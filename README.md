# NytSearch

A ruby wrapper for the [Article Search API v2 - The New York Times](http://developer.nytimes.com/docs/read/article_search_api_v2)
Get your API key [here](http://developer.nytimes.com/apps/mykeys).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nyt_search'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nyt_search

## Configuration

`NytSearch::Api.key("your_api_key")`

If rails in *config/environments/*

`NytSearch::Api.key("your_api_key")`

## Usage

```
@search = NytSearch::Article.search(query: "obama", sort: "newest", page: 2, begin_date: 19660806)['response']['docs']
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nyt_search. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

