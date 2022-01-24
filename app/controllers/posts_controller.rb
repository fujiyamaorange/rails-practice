class PostsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :delete]}
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    # paramsから取得できる
    @post = Post.find_by(id: params[:id])
    @user = @post.user
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def create
    # POSTで渡ってきたデータをデータベースに保存しリダイレクトする
    # 変数名は@なしでもいける
    @post = Post.new(content: params[:content], user_id: @current_user.id) 
    
    if @post.save
      flash[:notice] = "新規投稿できました"
      redirect_to("/posts/index")
    else
      # URLはposts/createだけどrenderしているので中身はposts/new
      render("posts/new")
    end

    
  end

  def update
    # editページ→updateアクション→editページ or indexページ
    # なのでeditページで使う変数名と同じにした方が良い→@post
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]

    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
    

  end

  def delete
    @delete_post = Post.find_by(id: params[:id])
    @delete_post.destroy
    
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    
    if @post.user_id != @current_user.id
      flash[:notice] = '権限がありません'
      redirect_to("/posts/index")
    end
  end
end
