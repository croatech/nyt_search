require 'spec_helper'

describe "Nyt Search Sort" do
  before :each do
    @oldest = NytSearch::Article.search(query: "USA", sort: "oldest")
    @newest = NytSearch::Article.search(query: "USA", sort: "newest")
  end

  it 'checks count of json hash with sort' do
    expect(@newest.count).to eq(10)
    expect(@oldest.count).to eq(10)
  end

  it 'compares json hashes with different sorts' do
    expect(@oldest).not_to eq(@newest)
  end

  it 'compares public dates' do
    @oldest = perform_date(@oldest[0]['pub_date'])
    @newest = perform_date(@newest[0]['pub_date'])
    expect(@newest).to be > @oldest
  end
end