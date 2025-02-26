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
    
    # render companies/show view with details about Company
  end





end
