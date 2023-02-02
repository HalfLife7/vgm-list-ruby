module Vgm
  module V1
    module Entities
      class Game < Grape::Entity
        expose :id, documentation: { type: 'Integer' }
        expose :aggregated_rating_count, documentation: { type: 'Integer', desc: 'Total number of ratings' }
        expose :aggregated_rating, documentation: { type: 'Float', desc: 'Average rating' }
        expose :category, documentation: { type: 'String' }
        expose :first_release_date, format_with: :unix_to_iso8601
        expose :name
        expose :slug
        expose :summary
      end
    end
  end
end
