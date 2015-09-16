$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nyt_search'

NytSearch::Api.key("3902bd97c6aea3f7c74558db1714572e:8:72952134")

public

  def perform_date(date)
    date.split("T")[0].split("-").reduce(:+).to_i
  end