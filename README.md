# NytSearch

A ruby wrapper for the [Article Search API v2 - The New York Times](http://developer.nytimes.com/docs/read/article_search_api_v2)

Get your API key [here](http://developer.nytimes.com/apps/mykeys).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nyt_search', :git => 'https://github.com/Frylock13/nyt_search.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nyt_search

## Configuration

`NytSearch::Api.key("your_api_key")`

If rails, set it in *config/environments/*

## Usage

```
@search = NytSearch::Article.search(query: "obama", sort: "newest", page: 2)
```

**Available options**:
```
query, 
sort(newest, oldest),
page, 
begin_date(YYYYMMDD), 
end_date(YYYYMMDD),
only("headline,web_url")
```

**Limits the fields returned in your search results. By default (unless you include an only list in your request), the following fields are returned**:

```
web_url

snippet

lead_paragraph

abstract

print_page

blog

source

multimedia

headline

keywords

pub_date

document_type

news_desk

byline

type_of_material

_id

word_count
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Frylock13/nyt_search. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

