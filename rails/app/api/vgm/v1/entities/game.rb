module Vgm
  module V1
    module Entities
      class Game < Grape::Entity
        expose :id, documentation: { type: 'Integer' }
        expose :aggregated_rating_count, documentation: { type: 'Integer', desc: 'Total number of ratings' }
        expose :aggregated_rating, documentation: { type: 'Float', desc: 'Average rating' }
        expose :category, documentation: { type: 'String' }
        expose :first_release_date, format_with: :unix_to_iso8601, documentation: { type: 'Date' }
        expose :name, documentation: { type: 'String' }
        expose :slug, documentation: { type: 'String' }
        expose :summary, documentation: { type: 'String' }
        expose :game_alternative_names, using: Entities::GameAlternativeName
        expose :game_artworks, using: Entities::GameArtwork
        expose :game_collections, using: Entities::GameCollection
        expose :game_covers, using: Entities::GameCover
        expose :game_platforms, using: Entities::GamePlatform
        expose :game_screenshots, using: Entities::GameScreenshot
        expose :game_videos, using: Entities::GameVideo
        expose :game_websites, using: Entities::GameWebsite
        expose :album_games, using: Entities::AlbumGame
      end
    end
  end
end
