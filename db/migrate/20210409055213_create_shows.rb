class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title, null:false
      t.text :synopsis, null:false

      t.timestamps
    end
    add_index :shows, :title, unique:true
  end
end
