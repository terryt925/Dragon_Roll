class Anime < ApplicationRecord

  validates :title, :synopsis, presence: true, uniqueness: true

  has_one_attached :photo

  has_many :episodes,
    foreign_key: :anime_id,
    class_name: :Episode

  has_many :bookmarks,
    foreign_key: :anime_id,
    class_name: :Bookmark

  has_many :users_bookmarked,
    through: :bookmarks,
    source: :user

end
