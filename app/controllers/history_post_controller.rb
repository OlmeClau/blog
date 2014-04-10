class HistoryPostController < ApplicationController
	def create
    @history_post= HistoryPost.new(params.permit(:title, :text ,:category))
    @history_post.save
    redirect_to administrative_post_path , notice: 'Post was successfully createdbbb.' 
    end
  
end
