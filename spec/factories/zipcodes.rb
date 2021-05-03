FactoryBot.define do
  factory :zipcode do
    zipcode {
      (00000..99999).to_a.sample
    }
    city {
      Faker::Address.city
    }
    state {
      Faker::Address.state_abbr
    }
    lat {
      Faker::Address.latitude
    }
    long {
      Faker::Address.longitude
    }
    timezone {
      (-8..-4).to_a.sample
    }
    daylight_savings {
      [true, false].sample
    }
    geopoint {
      Faker::Number.decimal(l_digits: 2, r_digits: 5)
    }
  end

end
