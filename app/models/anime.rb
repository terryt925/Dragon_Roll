class Anime < ApplicationRecord

  validates :title, :synopsis, presence: true, uniqueness: true

  has_one_attached :photo

  has_many :episodes,
    foreign_key: :anime_id,
    class_name: :Episode

end
