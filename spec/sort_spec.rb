require 'spec_helper'

describe "Nyt Search Sort" do
  before :each do
    @oldest = NytSearch::Article.search(query: "USA", sort: "oldest")['response']['docs']
    @newest = NytSearch::Article.search(query: "USA", sort: "newest")['response']['docs']
  end

  it 'checks count of json array with sort' do
    expect(@oldest.count).to eq(10)
  end

  it 'is comparing json arrays with different sort' do
    expect(@oldest).not_to eq(@newest)
  end

  it 'is comparing public dates' do
    @oldest = perform_date(@oldest[0]['pub_date'])
    @newest = perform_date(@newest[0]['pub_date'])
    expect(@newest).to be > @oldest
  end
end