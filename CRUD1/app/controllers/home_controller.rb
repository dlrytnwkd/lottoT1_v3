class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/home/index'
    
  end

  def new
  end
  
  def destroy
    post = Post.find(params[:id])
    post.destroy
    
    redirect_to '/home/index'
  end
end
