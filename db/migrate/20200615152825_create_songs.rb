class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :genre
      t.integer :number_of_plays, default: 0
      t.boolean :favorite, default: false
      t.string :url
      t.timestamps
    end
  end
end
