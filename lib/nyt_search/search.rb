module NytSearch
  class Search < Api
    def self.by_word(query)
      url = "#{@@config[:base_uri]}?q=#{query}&api-key=#{@@config[:api_key]}"
      NytSearch::Api.get_json(url)
    end
  end
end