class TweetsController < ApplicationController
  before_filter :get_tweet, :only => [:show, :edit]
  before_filter :check_auth, :only => [:edit]
  
  def get_tweet
    @tweet = Tweet.find(params[:id])
  end
  
  def check_auth
    if session[:zombie_id] != @tweet.zombie_id
      flash[:notice] = "Hey, you can't access that tweet!"
      redirect_to(tweets_path)
    end
  end
  
  def index
    # all tweets
  end
  
  def show
    # see the before_filter ...
    respond_to do |format|
      format.html
      format.xml {render :xml => @tweet}
      format.json {render :json => @tweet}
    end
    
  end
  
  def new
    # new tweet form
  end
  
  def edit
    # CHECK my check_auth before filter!
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
    # handle deletes here
  end
end
