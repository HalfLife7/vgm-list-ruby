FactoryBot.define do
  factory :game_artwork do
    alpha_channel { Faker::Number.between(from: 0, to: 1) }
    animated { Faker::Number.between(from: 0, to: 1) }
    height { Faker::Number.number(digits: 4)} #TODO: use trait?? check if theres ways to setup factories to pick combinations of values (1920x1080, etc)
    image_id { Faker::Alphanumeric.alpha(number:6) }
    url { Faker::Internet.url }
    width { Faker::Number.number(digits: 4) }
    checksum { Faker::Alphanumeric.alpha(number:6) }
  end
end
