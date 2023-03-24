class CreateGameCollections < ActiveRecord::Migration[7.0]
  def change
    create_join_table :games, :collections do |t|
      t.index :game_id
      t.index :collection_id

      t.timestamps
    end
  end
end
