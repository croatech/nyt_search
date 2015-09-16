module NytSearch
  class Search < Api
    def self.query(options = {sort: "newest"})
      url = "#{@@config[:base_uri]}?q=#{options[:query]}&api-key=#{@@config[:api_key]}"
      url += "&page=#{options[:page]}" if options[:page]
      url += "&sort=#{options[:sort]}" if options[:sort]
      NytSearch::Api.get_json(url)
    end
  end
end