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
      @posts_title = Post.find(params[:id]).title
      @posts_content = Post.find(params[:id]).content
    #will display a single post
    # if Post.exists?(current_user.id)
    #   render :index
    # else 
    #   render :show
    # end
  end

  def edit
    @user="user"
  end

  def delete
  end
end
