class CreateGamePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_join_table :games, :platforms do |t|
      t.index :game_id
      t.index :platform_id

      t.timestamps
    end
  end
end
