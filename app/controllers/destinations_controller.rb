class DestinationsController < ApplicationController
  def index
    search_item = params[:search_item]
    raise
    #if user.input == menu_items.type && <= menu_items.price
     # @destinations.find(menu_item)
    #else
     # Destination.all
    #end
    @destinations = Destination.all
  end

  def show
    @destinations = Destination.find(params[:id])
  end
end
