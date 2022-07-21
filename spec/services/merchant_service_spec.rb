require 'rails_helper'

RSpec.describe 'MerchantService' do


  it "retrieves data and parses response" do
    parsed_json = MerchantService.get_all_merchants[:data]

    expect(parsed_json).to be_a Array
    merchant = parsed_json.first
    expect(merchant).to include :attributes, :id
    expect(merchant[:id]).to be_a String
    expect(merchant[:attributes]).to be_a Hash
  end
end
