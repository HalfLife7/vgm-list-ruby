require 'composite_primary_keys'

class AlbumPerformer < ApplicationRecord
  belongs_to :artist
  belongs_to :album
end
