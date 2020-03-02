class TweetsController < ApplicationController
  def create
    @tweet = Tweet.create(user: current_user,tweet:params[:tweet])
    if !@tweet.id.nil?  
      flash[:notice] = "Successfully Tweet added to your profile"
    else
      flash[:alert] = "Cannot create Tweet"
    end
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    user_stock.destroy
    flash[:notice] = "Tweet is successfully removed!"
    redirect_to root_path
  end
end
