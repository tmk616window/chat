class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @topic = Topic.new(user_id: current_user.id)

  end

  def show
        @topic = Topic.find(params[:id])
        @post = Post.new(topic_id: params[:id],user_id: current_user.id,name: current_user.name)
        @posts = Post.where(topic_id: params[:id])
  end
  
  def create
    @topic = Topic.new(topic_params)
    @topic.save
    redirect_to root_path
  end
  
  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
    redirect_to root_path
  end
  
  
  private
  
  def topic_params
    params[:topic].permit(:title,:user_id,:name)
  end
  

end
