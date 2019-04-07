class PostsController < ApplicationController
  def show
    @post = Post.find_by(id: params[:id])
  end
  def index
    @posts = Post.all
  end
  def edit
    @post = Post.find_by(id: params[:id])
  end
  def update
  end
  def new
  end
  def create
  end
  def destroy
  end
end
  
