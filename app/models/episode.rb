class Episode < ApplicationRecord

  validates :title, :video_link, presence: true, uniqueness: true
  validates :anime_id, pressence: true

  belongs_to :anime,
    foreign_key: :anime_id,
    class_name: :Anime

end
