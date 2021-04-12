class Anime < ApplicationRecord

  validates :title, :synopsis, presence: true, uniqueness: true

  has_one_attached :photo

end
