require 'composite_primary_keys'

class AlbumsGames < ApplicationRecord
  belongs_to :album
  belongs_to :game
end
