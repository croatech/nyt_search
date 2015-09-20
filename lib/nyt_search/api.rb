module NytSearch
  class Api
    include HTTParty

    class << self
      def config
        @@config ||= {}
      end

      def key(api_key)
        self.config[:api_key] = api_key
        self.config[:base_uri] = "http://api.nytimes.com/svc/search/v2/articlesearch.json"
      end

      def get_json(url)
        response = HTTParty.get(url)
        JSON.parse(response.body)
      end
    end
  end
end