class PostController < ApplicationController
  ### this will allow def show end
   before_filter :authenticate_user!, except: :edit
  
  def show
    render :show 
  end

  def edit
    @user="user"
    render :edit
  end
end
