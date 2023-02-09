class CreateGameArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :game_artworks do |t|

      t.timestamps
    end
  end
end
