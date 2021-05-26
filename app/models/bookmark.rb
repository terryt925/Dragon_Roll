class Bookmark < ApplicationRecord

  validates :user_id, presence: true
  validates :anime_id, presence: true

  belongs_to :anime,
    foreign_key: :anime_id,
    class_name: :Anime

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

end
