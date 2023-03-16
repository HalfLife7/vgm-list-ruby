class Platform < ApplicationRecord
  has_many :platform_logos
  has_many :game_platforms

  enum category: %i[
    console
    arcade
    platform
    operating_system
    portable_console
    computer
  ].freeze

  validates :category, inclusion: { in: categories.keys }
end
