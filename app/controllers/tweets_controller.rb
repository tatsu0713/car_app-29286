class TweetsController < ApplicationController

  def index
  end

  def new
  end
  
  def create
  end


  private

  # def tweet_params
  #   params.require(:tweet).permit(:image, :brand_id, :type_id, :model_year_id, :title, :caption).merge(user_id: current_user.id)
  # end
end