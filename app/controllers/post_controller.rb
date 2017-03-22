class PostController < ApplicationController
  def show
    render :show 
  end

  def edit
    render :edit, locals: { user: params[:user] }
  end
end
