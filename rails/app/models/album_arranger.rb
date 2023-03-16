require 'composite_primary_keys'

class AlbumArranger < ApplicationRecord
  belongs_to :artist
  belongs_to :album
end
