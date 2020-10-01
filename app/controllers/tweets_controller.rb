class TweetsController < ApplicationController

  def index
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def tweet_params
    params.permit(:image, :brand_id, :type_id, :model_year_id, :title, :caption).merge(user_id: current_user.id)
  end
end