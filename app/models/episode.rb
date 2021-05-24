class Episode < ApplicationRecord

  validates :video_link, presence: true, uniqueness: true
  validates :title, presence: true

  belongs_to :anime,
    foreign_key: :anime_id,
    class_name: :Anime

  has_many :bookmarks,
    foreign_key: :episode_id,
    class_name: :Bookmark

  has_many :users_bookmarked,
    through: :bookmarks,
    source: :user

end
