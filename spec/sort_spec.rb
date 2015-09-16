require 'spec_helper'

describe "Nyt Search Sorting" do
  before :each do
    @oldest = NytSearch::Search.query(query: "USA", sort: "oldest")['response']['docs']
    @newest = NytSearch::Search.query(query: "USA", sort: "newest")['response']['docs']
  end

  it 'checks count of json array with sort' do
    expect(@oldest.count).to eq(10)
  end

  it 'is comparing json arrays with different sort' do
    expect(@oldest).not_to eq(@newest)
  end

  it 'is comparing public dates' do
    @oldest = @oldest[0]['pub_date'].split("T")[0].split("-").reduce(:+)
    @newest = @newest[0]['pub_date'].split("T")[0].split("-").reduce(:+)
    expect(@newest).to be > @oldest
  end
end