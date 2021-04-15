class ChangeEpisode < ActiveRecord::Migration[5.2]
  def change
    remove_index :episodes, :title
    add_index :episodes, :title
  end
end
