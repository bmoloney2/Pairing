
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
    @post = Post.find params[:id]
    # @user_first= current_user.first_name
    # @user_last= current_user.last_name
  end

  def delete
  end

  def update
    @post= Post.find(params[:id])
    if @post.update(post_params)
      redirect_to '/'
    else
      render :edit
    end
  end
    
    private

    def post_params
      params.require(:post).permit(:title, :content)
    end
end
