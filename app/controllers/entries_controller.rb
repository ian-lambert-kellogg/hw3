class EntriesController < ApplicationController

  def index
    # find all Post rows
    @posts = Entry.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    # start with a new Post
    @post = Entry.new
    # assign user-entered form data to Post's columns
    @post["title"] = params["title"]
    @post["description"] = params["description"]
    @post["date"] = params["date"]
    # save Post row
    @post.save
    # redirect user
    redirect_to "/entries"
  end


end
