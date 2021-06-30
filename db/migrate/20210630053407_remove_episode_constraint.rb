class RemoveEpisodeConstraint < ActiveRecord::Migration[5.2]
  def change
    remove_column :episodes, :video_link
    add_column :episodes, :video_link, :string
  end
end
