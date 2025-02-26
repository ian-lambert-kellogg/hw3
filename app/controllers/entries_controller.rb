class EntriesController < ApplicationController

  def index
    # render :inline => "test "
    render :template => "entries/index"
  end 

end
