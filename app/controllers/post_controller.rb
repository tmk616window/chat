class PostController < ApplicationController
    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to topics_show_path(params[:post]['topic_id'])
    end
    
     private
    def post_params
       params[:post].permit(:topic_id,:name,:body,:user_id)
    end

    
end
