require 'rails_helper'

RSpec.describe Item do

  it "populates item details fields from JSON response" do
    data = {
      id: 1,
      attributes:{
      name: "Magic Wand",
      description: "I love magic",
      unit_price: 12.40
      }
    }

    item_details = Item.new(data)

    expect(item_details).to be_a Item
    expect(item_details.id).to eq(1)
    expect(item_details.name).to eq("Magic Wand")
  end
end
