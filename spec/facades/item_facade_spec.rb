require 'rails_helper'

RSpec.describe 'ItemFacade' do

  it "makes a service call and returns merchant objects" do
    merchants = ItemFacade.all_items

    expect(merchants).to be_a Array
    expect(merchants).to be_all Item
  end

  it "makes a service call and returns that merchants item objects" do
    merchants_items = ItemFacade.item_details(179)

    expect(merchants_items).to be_a Item

  end
end
