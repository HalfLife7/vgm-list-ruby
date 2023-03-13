class Platform < ApplicationRecord
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
