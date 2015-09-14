module NytSearch
  class Client
    def initialize(access_token = nil)
      @access_token = access_token || ENV["NYT_ACCESS_TOKEN"]
    end

    def perform_request(query)
      url = "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=#{query}&api-key=#{@access_token}"
      response = HTTParty.get(url)
      JSON.parse(response.body)
    end
  end
end