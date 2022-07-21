class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    @merchant_items = MerchantFacade.merchants_items(params[:id])
  end
end
