class ItemFacade
  def self.all_items
    json = ItemService.get_all_items

    json[:data].map do |item|
      Item.new(item)
    end
  end

  def self.item_details(id)
    json = ItemService.get_item_details(id)
    parsed_json = json[:data]
      Item.new(parsed_json)
  end
end
