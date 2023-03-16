require 'composite_primary_keys'

class AlbumLyricist < ApplicationRecord
  belongs_to :artist
  belongs_to :album
end
