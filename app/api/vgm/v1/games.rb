module Vgm
  module V1
    class Games < Vgm::Api
      helpers Vgm::V1::Helpers
      resources :games do
        # GET /api/v1/games
        desc 'Return all games'
        get do
          games = Game.all
          status 200
          present games, with: Entities::Game
        rescue StandardError => e
          error!(e)
        end

        # GET /api/v1/games/:id
        desc 'Returns specific game'
        route_param :id, type: Integer do
          get do
            status 200
            Game.find(params[:id])
          rescue ActiveRecord::RecordNotFound
            error!('Record not found', 404)
          end
        end

        # POST /api/v1/games
        desc 'Create a game'
        params do
          requires :name, type: String, allow_blank: false
          optional :aggregated_rating_count, type: Integer
          optional :aggregated_rating, type: Float
          optional :category, type: String
          optional :first_release_date, type: Date
          optional :summary, type: String
        end
        post do
          game = Game.create!(params)
          status 200
          { game: game, message: 'Game created successfully' }
        rescue StandardError => e
          error!(e)
        end

        # PATCH /api/v1/games/:id
        params do
          optional :name, type: String, allow_blank: false
          optional :aggregated_rating_count, type: Integer
          optional :aggregated_rating, type: Float
          optional :category, type: String
          optional :first_release_date, type: Date
          optional :summary, type: String
        end
        route_param :id, type: Integer do
          patch do
            game = Game.find(params[:id])
            game.update(params)
            status 200
            { game: game, message: 'Game updated successfully' }
          rescue StandardError => e
            error!("Invalid - #{e}", 400)
          end
        end

        # DELETE /api/v1/games/:id
        route_param :id, type: Integer do
          delete do
            game = Game.find(params[:id])
            game.delete
            status 200
            { message: 'Game deleted successfully' }
          rescue StandardError => e
            error!(e)
          end
        end
      end
    end
  end
end
