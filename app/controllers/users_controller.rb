class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @posts = Post.order("created_at DESC").page(params[:page]).per(9)
  end
end
