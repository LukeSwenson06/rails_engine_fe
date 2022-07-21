class ItemService
  def self.get_all_items
    connection = Faraday.new("http://localhost:3000")
    response = connection.get("/api/v1/items")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_item_details(id)
    connection = Faraday.new("http://localhost:3000")
    response = connection.get("/api/v1/items/#{id}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
