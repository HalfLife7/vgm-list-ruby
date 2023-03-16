require 'composite_primary_keys'

class GamePlatform < ApplicationRecord
  belongs_to :game
  belongs_to :platform
end
