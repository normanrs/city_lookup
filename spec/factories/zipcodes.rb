FactoryBot.define do
  factory :zipcode do
    zipcode { "MyString" }
    city { "MyString" }
    state { "MyString" }
    lat { "MyString" }
    long { "MyString" }
    timezone { "MyString" }
    daylight_savings { "MyString" }
    geopoint { "MyString" }
  end
end
