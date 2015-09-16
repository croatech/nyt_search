require 'spec_helper'

describe "Nyt Search Custom" do
  before :each do
    @search = NytSearch::Article.search(query: "USA")
  end

  it 'checks count of json array' do
    expect(@search.count).to eq(10)
  end
end
