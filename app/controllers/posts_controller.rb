class PostsController < ApplicationController

  before_filter :authenticate_user!
  before_action :find_post

  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save(post_params)
      flash[:notice] = "Successfully created post!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new post!"
      render :new
    end
  end

  def show
      @posts_title = Post.find(params[:id]).title
      @posts_content = Post.find(params[:id]).content
    #will display a single post
    if Post.exists?(current_user.id)
      @posts = Post.find(params[:id])
      render :show
    else
      # render :new
    end
  end

  def edit
    @post = Post.find params[:id]
    # @user_first= current_user.first_name
    # @user_last= current_user.last_name
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
  def destroy
    if @post.destroy
      flash[:notice] = "Successfully deleted post!"
      redirect_to post_path
    else
      flash[:alert] = "Errors deleting post!"
    end
  end
end

private

def post_params
  params.require(:post).permit(:title, :admin_message, :content, :sender_id, :recipient_id, :rating)
end

def find_post
  @post = Post.find_by_id(params[:id])
end
