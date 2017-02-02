class PostsController < ApplicationController
  def new
    @post = Post.new.all("created_at_DESC")
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new[permit_post]
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
