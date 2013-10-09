class GratitudePostsController < ApplicationController

  def new
  	@gratitude_post = GratitudePost.new
  end

  def create
    @gratitude_post = GratitudePost.new(post_params)

    @gratitude_post.save
    redirect_to @gratitude_post
  end

  def show
    @gratitude_post = GratitudePost.find(params[:id])
  end

  def index 
    @gratitude_posts = GratitudePost.all
  end

  private
  def post_params
    params.require(:gratitude_post).permit(:text, :hide)
  end

end
