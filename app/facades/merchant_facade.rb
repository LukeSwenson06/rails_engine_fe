class MerchantFacade
  def self.all_merchants
    json = MerchantService.get_all_merchants

    json[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.merchants_items(id)
    json = MerchantService.get_merchant_items(id)

    json[:data].map do |merchant|
      Item.new(merchant)
    end
  end
end
