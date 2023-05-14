class PostsController < ApplicationController
  def new
    @post = Post.new
    @post["place_id"]= params["place_id"]
 
  end

  def create
 
    @post = Post.new

    @post["title"] = params["contact"]["title"]
    @post["description"] = params["contact"]["description"]
    @post["posted_on"] = params["contact"]["posted_on"]

    @post["place_id"] = params["place"]["place_id"]

    # save Contact row
    @post.save

    # redirect user
    redirect_to "/places/#{@post["place_id"]}"
  end

end
