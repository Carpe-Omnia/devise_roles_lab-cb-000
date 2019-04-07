class PostsController < ApplicationController
  def show
    @post = Post.find_by(id: params[:id])
  end
  def index
    @posts = Post.all
  end
  def edit
    @post = Post.find_by(id: params[:id])
    if !current_user.admin? && Post.user_id != session[:user_id]
      redirect_to :back
    end
  end
  def update
    @post = Post.find_by(id: params[:id])
    if !current_user.admin? && Post.user_id != session[:user_id]
      redirect_to :back
    end
  end
  def new
    @post = Post.new 
  end
  def create
  end
  def destroy
  end
end
