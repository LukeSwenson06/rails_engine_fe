require 'rails_helper'

RSpec.describe 'ItemService' do


  it "retrieves data and parses response" do
    parsed_json = ItemService.get_all_items[:data]

    expect(parsed_json).to be_a Array
    item = parsed_json.first
    expect(item).to include :attributes, :id
    expect(item[:id]).to be_a String
    expect(item[:attributes]).to be_a Hash
  end

  it "retrieves item specific data and parses response" do
    id = 179
    parsed_json = ItemService.get_item_details(id)[:data]

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:id]).to be_a String
    expect(parsed_json[:attributes][:name]).to be_a String
    expect(parsed_json[:attributes][:description]).to be_a String
    expect(parsed_json[:attributes][:unit_price]).to be_a Float
  end
end
