require 'spec_helper'

describe "Nyt Search Page" do
  before :each do
    @search = NytSearch::Search.query(query: "USA", page: 1)['response']['docs'] 
  end

  it 'checks count of json array with page' do
    expect(@search.count).to eq(10)
  end

  it 'is comparing json arrays on different pages' do
    @search_on_page = NytSearch::Search.query(query: "USA", page: 2)['response']['docs']
    expect(@search).not_to eq(@search_on_page) # articles on 1 and 2 pages
  end
end