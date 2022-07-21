require 'rails_helper'

RSpec.describe 'MerchantFacade' do

  it "makes a service call and returns merchant objects" do
    merchants = MerchantFacade.all_merchants

    expect(merchants).to be_a Array
    expect(merchants).to be_all Merchant
  end

  it "makes a service call and returns that merchants item objects" do
    merchants_items = MerchantFacade.merchants_items(1)

    expect(merchants_items).to be_a Array
    expect(merchants_items).to be_all Item

  end
end
