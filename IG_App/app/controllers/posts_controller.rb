class PostsController < ApplicationController
  def new
    @post = Post.new.all("created_at_DESC")
  end

  def index
  end

  def show
  end
end
