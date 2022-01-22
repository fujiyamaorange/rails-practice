class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    # paramsから取得できる
    @post = Post.find_by(id: params[:id])
  end
end
