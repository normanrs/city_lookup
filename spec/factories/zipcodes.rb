# frozen_string_literal: true

FactoryBot.define do
  factory :zipcode do
    zipcode do
      (0o0000..99_999).to_a.sample
    end
    city do
      Faker::Address.city
    end
    state do
      Faker::Address.state_abbr
    end
    lat do
      Faker::Address.latitude
    end
    long do
      Faker::Address.longitude
    end
    timezone do
      (-8..-4).to_a.sample
    end
    daylight_savings do
      [true, false].sample
    end
    geopoint do
      Faker::Number.decimal(l_digits: 2, r_digits: 5)
    end
  end
end
