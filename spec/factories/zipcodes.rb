FactoryBot.define do
  factory :zipcode do
    zipcode {
      ("00000".."99999").to_a.sample
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
      (-8..-4).to_a.sample.to_s
    }
    daylight_savings {
      ["0", "1"].sample
    }
    geopoint {
      Faker::Number.decimal(l_digits: 2, r_digits: 5).to_s
    }
  end

end
