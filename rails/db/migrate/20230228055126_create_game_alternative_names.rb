class CreateGameAlternativeNames < ActiveRecord::Migration[7.0]
  def change
    create_table :game_alternative_names, &:timestamps
  end
end
