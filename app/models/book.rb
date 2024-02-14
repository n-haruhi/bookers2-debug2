class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}

  # favorited_by?メソッドで、引数で渡されたユーザidがテーブル内に存在exists?するか調べる
  # trueかfalseを返す
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
