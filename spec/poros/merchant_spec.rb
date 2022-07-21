require 'rails_helper'

RSpec.describe Merchant do

  it "populates Merchant details fields from JSON response" do
    data = {
      id: 1,
      attributes:{
      name: "Ricky Bobby"
      }
    }

    merchant_details = Merchant.new(data)

    expect(merchant_details).to be_a Merchant
    expect(merchant_details.id).to eq(1)
    expect(merchant_details.name).to eq("Ricky Bobby")
  end
end
