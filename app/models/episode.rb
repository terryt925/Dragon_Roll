class Episode < ApplicationRecord

  validates :video_link, presence: true
  validates :title, presence: true

  belongs_to :anime,
    foreign_key: :anime_id,
    class_name: :Anime


end
