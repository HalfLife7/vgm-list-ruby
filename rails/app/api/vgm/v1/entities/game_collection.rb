module Vgm
  module V1
    module Entities
      class GameCollection < Grape::Entity
        expose :collection do |game_collection, options|
          Collection.where(id: game_collection.collection_id)
        end
      end
    end
  end
end