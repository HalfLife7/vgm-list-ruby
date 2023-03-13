class Game < ApplicationRecord
  enum category: %i[
    main_game
    dlc_addon
    expansion
    bundle
    standalone_expansion
    mod
    episode
    season
    remake
    remaster
    expanded_game
    port
    fork
  ].freeze

  validates :category, inclusion: { in: categories.keys }
end
