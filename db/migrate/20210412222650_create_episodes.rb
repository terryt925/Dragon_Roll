class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title, null:false
      t.integer :anime_id, null:false
      t.string :video_link, null:false

      t.timestamps
    end
    add_index :episodes, :title, unique:true
    add_index :episodes, :anime_id
    add_index :episodes, :video_link, unique:true
  end
end
