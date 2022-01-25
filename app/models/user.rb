class User < ApplicationRecord
  # {presence: true}の機能を持つ
  has_secure_password
  
  validates :name, { presence: true }
  validates :email, { presence: true, uniqueness: true }

  # インスタンスメソッド
  def posts
    return Post.where(user_id: self.id)
  end
end
