class PagesController < ApplicationController
  def profile
    @user = current_user
    @tweets = @user.tweets.reverse
  end
end
