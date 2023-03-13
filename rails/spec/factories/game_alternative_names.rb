FactoryBot.define do
  factory :game_alternative_name do
    association :game, factory: :game
  end
end
