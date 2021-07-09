FactoryBot.define do
  factory :real_estate do
    name { Faker::Name.name}
    real_state_type { "house" }
    street { Faker::Address.street_name }
    external_number { Faker::Address.building_number }

    neighborhood {"neighborhood"}
    city { Faker::Address.city}
    country { Faker::Address.country }
    rooms { 4 }
    bathrooms { 2}
    # Add additional fields as required via your User model
  end

  # Not used in this tutorial, but left to show an example of different user types
  # factory :admin do
  #   id {2}
  #   email {"test@admin.com"}
  #   password {"qwerty"}
  #   admin {true}
  # end
end