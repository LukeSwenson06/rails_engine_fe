class ItemsController < ApplicationController
  def index
    @items = ItemFacade.all_items
  end

  def show
    @items = ItemFacade.item_details(params[:id])
  end
end
