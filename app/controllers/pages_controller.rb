class PagesController < ApplicationController

  def home
  	 # SELECT ALL 
  	# FROM DESTINATIONS TABLE
  	# WHERE DESTINATION.LATITUDE && DESTINATION.LONGITUDE (WITHIN 10KM?) MATCHES USER.LATITUDE && USER.LONGITUDE
  	# categories = ??? 
  	# price = ???
  	# @destinations = Destination.near(location, 3)
  	# @destinations_and_menu_items = @destinations.map do |destination|
  	#   { destination => destination.filtered_menu_items(categories, price)}
  	# end
  	# display destination card w/ cate
  end

  def search
  end

end


# user.input shows destinations based on items selected via the search menu
# index page items selected based on currency entered, destination and available items selected and filtered
# based on lat & long of user


# SELECT ALL DESTINATIONS WHERE THE LOCATION MATCHES USER LOCATION, THE PRICE IS <= PRICE ENTERED, 
# AND THE CATEGORY MATCHES CATEGORY(S) SELECTED