class MerchantService
  def self.get_all_merchants
    response = connection.get('/api/v1/merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchant_items(id)
    response = connection.get("/api/v1/merchants/#{id}/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    conn = Faraday.new(
      url: "http://localhost:3000"
    )
  end
end
