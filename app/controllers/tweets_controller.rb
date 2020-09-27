class TweetsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        tweet = Tweet.create(tweets_params)
        render json: tweet, status: 201
    end

    def new
        @tweet = Tweet.new
    end
    

    def index
        @tweets = Tweet.all
        @users = User.all
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def destroy
        tweet = Tweet.find(params[:id])
        unless tweet.nil?
            tweet.destroy
            render json: {}, status: 204
        else
            render json: {}, status: 404
        end
    end

    private

    def tweets_params
        params.require(:tweet).permit(:text, :user_id)
    end
end