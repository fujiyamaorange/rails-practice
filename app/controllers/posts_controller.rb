class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    # paramsから取得できる
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def create
    # POSTで渡ってきたデータをデータベースに保存しリダイレクトする
    # 変数名は@なしでもいける
    @new_post = Post.new(content: params[:content]) 
    @new_post.save

    redirect_to("/posts/index")
  end

  def update
    @update_post = Post.find_by(id: params[:id])
    @update_post.content = params[:content]
    @update_post.save

    redirect_to("/posts/index")
  end

  def delete
    @delete_post = Post.find_by(id: params[:id])
    @delete_post.destroy
    
    redirect_to("/posts/index")
  end
end
