class PlacesController < ApplicationController

  def index
    
    #@tplaces = ["Mexico City", "Charleston", "Bejing", "Amsterdam"]
    #@places = Place.all
    @places = Place.all


    # initial_place = Place.new
    # initial_place["name"] = "Mexico City"
    # initial_place.save
    #render :template => "places/index"
  end 

  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    
    # render places/show view with details about Company
  end

  def new
  
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new
    # assign user-entered form data to Place columns
    @place["name"] = params["name"]
    
    # save Company row
    @place.save
    # redirect user
    redirect_to "/places"
  end

end
