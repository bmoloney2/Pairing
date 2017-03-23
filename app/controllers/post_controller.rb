class PostController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    render :show 
  end

  def edit
    @user="user"
    render :edit
  end
end
