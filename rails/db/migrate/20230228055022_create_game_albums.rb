class CreateGameAlbums < ActiveRecord::Migration[7.0]
  def change
    create_join_table :games, :albums do |t|
      t.index :game_id
      t.index :album_id

      t.timestamps
    end
  end
end
