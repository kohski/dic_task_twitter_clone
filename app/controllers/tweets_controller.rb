class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:tweet))
    if @tweet.save
      redirect_to new_tweet_path,notice: "complete"
    else
      render 'new'
    end
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    
  end
  
end
