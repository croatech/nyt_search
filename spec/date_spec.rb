require 'spec_helper'

describe "Nyt Search Date" do
  before :each do
    # 06 August 1966 - 21 December 2012
    @search = NytSearch::Search.query(query: "USA", begin_date: 19671022, end_date: 20121221)['response']['docs']
  end

  it 'checks count of json array' do
    expect(@search.count).to eq(10)
  end

  it 'checks begin date' do
    @date_of_first_article = perform_date(@search[0]['pub_date'])
    expect(@date_of_first_article).to eq(19671022)
  end
end
