class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @destination_coordinates = { lat: @destination.latitude, lng: @destination.longitude }
      @destination_coordinates = Destination.where.not(latitude: nil, longitude: nil)
        @hash = Gmaps4rails.build_markers(@destination) do |destination, marker|
          marker.lat destination.latitude
          marker.lng destination.longitude
       end
  end

  def map
    @destinations = Destination.where.not(latitude: nil, longitude: nil)
      @hash = Gmaps4rails.build_markers(@destinations) do |destination, marker|
      marker.lat destination.latitude
      marker.lng destination.longitude
      end
  end

  def destination_params
     params.require(:product).permit(:name, :address, :type, :open_hours, :close_hours, :photo)
  end
end

#add on-click event listener to markers and add url
