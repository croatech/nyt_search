module NytSearch
  class Article < Api
    def self.search(options = {})
      url = "#{@@config[:base_uri]}?q=#{options[:query]}&api-key=#{@@config[:api_key]}"
      url += "&page=#{options[:page]}" if options[:page]
      url += "&sort=#{options[:sort]}" if options[:sort]
      url += "&begin_date=#{options[:begin_date]}" if options[:begin_date]
      url += "&end_date=#{options[:end_date]}" if options[:end_date]
      NytSearch::Api.get_json(url)
    end
  end
end