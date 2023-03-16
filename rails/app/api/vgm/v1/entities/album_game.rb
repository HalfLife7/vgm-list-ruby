module Vgm
  module V1
    module Entities
      class AlbumGame < Grape::Entity
        expose :albums do |album_game, options|
          Album.where(id: album_game.album_id)
        end
      end
    end
  end
end