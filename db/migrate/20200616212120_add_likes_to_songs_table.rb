class AddLikesToSongsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :likes, :integer, default: 0
  end
end
