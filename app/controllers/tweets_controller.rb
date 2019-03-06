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
      redirect_to new_tweet_path,notice: "creation is complete"
    else
      render 'new'
    end
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    if @tweet.create(params.require(:tweet).permit(:tweet))
      redirect_to tweets_path,notice: "update is complete"
    else
      render 'edit'
    end
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path, notice: 'delete is complete'
  end
  
  def confirm
    @tweet = Tweet.new(tweet: params.require(:tweet).permit(:tweet))
  end
  
end
