class PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = Post.all
  end

  def new
  end

  def create
  end

  def show
    #will display a single post
    if Post.exists?(current_user.id)
      @posts = Post.find(params[:id])
      render :index
    else
      render :new
    end
  end

  def edit
    @user="user"
  end

  def delete
  end
end
