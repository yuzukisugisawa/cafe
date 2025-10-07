class UsersController < ApplicationController
  def show
    @user = User.find(params[:id]) 
    @tweets = @user.tweets
    @likes = @user.liked_tweets

  end
end
