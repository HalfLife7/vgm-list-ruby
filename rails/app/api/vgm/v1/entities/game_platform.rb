module Vgm
  module V1
    module Entities
      class GamePlatform < Grape::Entity
        expose :platforms do |game_platform, options|
          Platform.where(id: game_platform.platform_id)
        end
      end
    end
  end
end