class PlacesController < ApplicationController

  def index
    # render :inline => "test "
    render :template => "places/index"
  end 

end
