class TweetsController < ApplicationController
  
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
  @tweets = Tweet.all
  

  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    if @tweet.save
        redirect_to '/tweets#index'
    else
      render 'new'
    end
  end
  
  private
    def tweet_params
      params.require(:tweet).permit(:contenido)
    end
end
