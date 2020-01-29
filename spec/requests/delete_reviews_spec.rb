require 'rails_helper'

describe "delete a review route", :type => :request do

  let!(:reviews) { FactoryBot.create_list(:review, 20)}

  after do
    delete '/reviews/:id', params: { :author => 'Santa', :content => 'Ho ho' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)[0]['author']).to eq('Santa')
  end

  it 'returns the review content' do
    expect(JSON.parse(response.body)[0]['content']).to eq('Ho ho')
  end

end
