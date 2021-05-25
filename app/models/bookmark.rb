class Bookmark < ApplicationRecord

  validates :user_id, presence: true
  validates :episode_id, presence: true

  belongs_to :episode,
    foreign_key: :episode_id,
    class_name: :Episode

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

end
