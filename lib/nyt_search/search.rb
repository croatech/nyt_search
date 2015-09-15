module NytSearch
  class Search < Api
    def self.query(query, page = 1)
      url = "#{@@config[:base_uri]}?q=#{query}&page=#{page}&api-key=#{@@config[:api_key]}"
      NytSearch::Api.get_json(url)
    end
  end
end