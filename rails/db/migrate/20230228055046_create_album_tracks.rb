class CreateAlbumTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :album_tracks do |t|
      t.integer :id
      t.references :album, null: false, foreign_key: true
      t.references :disc, null: false, foreign_key: true
      t.text :length
      t.text :name

      t.timestamps
    end
  end
end
