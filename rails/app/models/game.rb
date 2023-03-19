class Game < ApplicationRecord
  has_many :game_alternative_names
  has_many :game_artworks
  has_and_belongs_to_many :collections
  has_many :game_covers
  has_and_belongs_to_many :platforms
  has_many :game_screenshots
  has_many :game_videos
  has_many :game_websites
  has_many :album_games

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
