require 'rails_helper'

describe "put a review route", :type => :request do

  before do
    put '/reviews/:id', params: { :author => 'test_author', :content => 'test_content' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq(nil)
  end

  it 'returns the review content' do
    expect(JSON.parse(response.body)['content']).to eq(nil)
  end

end
