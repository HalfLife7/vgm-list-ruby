require 'composite_primary_keys'

class AlbumGame < ApplicationRecord
  belongs_to :album
  belongs_to :game
end
