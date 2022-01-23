class HomeController < ApplicationController
  before_action :forbid_login_user, {only: [:top]}
  
  # アクション
  # homeコントローラのtopアクションに対応するHTMLファイルを探す
  # →views/home/top.html.erb
  def top
  end

  def about
  end
end
