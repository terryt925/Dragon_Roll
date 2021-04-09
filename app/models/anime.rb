class Anime < ApplicationRecord

  validates :title, :synopsis, presence: true, uniqueness: true

end
