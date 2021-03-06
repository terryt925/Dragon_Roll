class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id, null:false
      t.integer :episode_id, null:false

      t.timestamps
    end
    add_index :bookmarks, :user_id
    add_index :bookmarks, :episode_id
  end
end
