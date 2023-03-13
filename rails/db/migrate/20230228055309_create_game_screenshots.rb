class CreateGameScreenshots < ActiveRecord::Migration[7.0]
  def change
    create_table :game_screenshots do |t|
      t.references :game, null: false, foreign_key: true
      t.boolean :alpha_channel
      t.boolean :animated
      t.integer :height
      t.references :image, null: false, foreign_key: true
      t.text :url
      t.integer :width
      t.string :checksum

      t.timestamps
    end
  end
end
