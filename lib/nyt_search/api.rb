module NytSearch
  class Api
    include HTTParty

    def self.config
      @@config ||= {}
    end

    def self.set_config(api_key)
      self.config[:api_key] = api_key
      self.config[:base_uri] = "http://api.nytimes.com/svc/search/v2/articlesearch.json"
    end

    def self.get_json(url)
      response = HTTParty.get(url)
      JSON.parse(response.body)
    end
  end
end