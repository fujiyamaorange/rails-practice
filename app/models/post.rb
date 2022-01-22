# ApplicationRecordを継承したクラスはモデル
class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
end
