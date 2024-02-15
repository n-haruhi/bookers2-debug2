class Relationship < ApplicationRecord

  # 関連名と参照先のクラス名を異なるものに置き換えることができるオプション。モデル名を直接指定できる。
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

end
