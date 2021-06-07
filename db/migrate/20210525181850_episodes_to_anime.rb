class EpisodesToAnime < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookmarks, :episode_id, :anime_id
  end
end
