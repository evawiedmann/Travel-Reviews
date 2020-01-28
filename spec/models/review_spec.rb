require 'rails_helper'

describe Review do
  it{ should validate_presence_of :author }
  it{ should validate_presence_of :content }
  it 'is private by default' do
  review = FactoryBot.create(:review)
  review.author.should eq 'Santa'
end
end
