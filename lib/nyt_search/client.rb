module NytSearch
  class Client
    def initialize(access_token = nil)
      @access_token = access_token || ENV["NYT_ACCESS_TOKEN"]
    end
  end
end