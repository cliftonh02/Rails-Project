class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save
      flash[:success]= "Success"
      redirect_to post_path(@post)
    else
      flash[:error]= @post.errors.full_messages
      redirect_to new_post_path
  end
end

  def show
    @post = Post.find(params[:id])
  end
end
