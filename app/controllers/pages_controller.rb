class PagesController < ApplicationController

    layout "home"
  def home
  	params.delete :destination
  end

  def search
  end

end
