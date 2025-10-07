class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @tweets = Tweet.all
        #Tweetテーブルの中にある情報を全部持ってきてね
    
        if params[:search] != nil && params[:search] != ''
            #キーワード検索する  
              search_keyword = params[:search].split(/[[:blank:]]+/)  
              search_keyword.each do |keyword|
                next if keyword == ""
                    @tweets = @tweets.where("shop LIKE ? OR place LIKE ? OR menu LIKE ? OR detail LIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%")
              end
        end
        if params[:tag_ids].present?
            tweet_ids = []
            params[:tag_ids].each do |key, value| 
              if value == "1"
                tag_tweets = Tag.find_by(name: key).tweets
                @tweets = @tweets.empty? ? tag_tweets : @tweets & tag_tweets
                puts key
              end
            end
            tweet_ids = tweet_ids.uniq
            @tweets = @tweets.where(id: tweet_ids) if tweet_ids.present?
        end
        if params[:tag]
      Tag.create(name: params[:tag])
    end

end


  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.user_id = current_user.id
    if tweet.save
      Tag.create(name: params[:tag]) if params[:tag].present?
      redirect_to action: :index
    else
      redirect_to action: :new
    end
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    redirect_to tweets_path, alert: "Tweetが見つかりませんでした" if @tweet.nil?
  
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to action: :show, id: tweet.id
    else
      redirect_to action: :new
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private

  def tweet_params
    params.require(:tweet).permit(:shop, :place, :menu, :detail, :image, :price,:image2, tag_ids: [])
  end
end






