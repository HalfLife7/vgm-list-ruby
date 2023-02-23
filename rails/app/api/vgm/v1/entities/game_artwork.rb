module Vgm
  module V1
    module Entities
      class GameArtwork < Grape::Entity
            expose :id, documentation: { type: 'Integer'} #           int auto_increment
            expose :game_id, documentation: { type: 'Integer'} #      int          not null,
            expose :alpha_channel, documentation: { type: 'Boolean'} #tinyint(1)   null,
            expose :animated, documentation: { type: 'Boolean'} #     tinyint(1)   null,
            expose :height, documentation: { type: 'Integer'} #       int          null,
            expose :image_id, documentation: { type: 'String'} #     text         null,
            expose :url, documentation: { type: 'String'} #TODO: create and use helper to convert to url
            expose :width, documentation: { type: 'Integer'} #        int          null,
            expose :checksum, documentation: { type: 'String'} #     varchar(255) null,
      end
    end
  end
end
