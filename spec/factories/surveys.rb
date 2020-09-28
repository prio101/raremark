FactoryGirl.define do
  factory :survey do
    name  Faker::Games::DnD.city
    status [ true, false].sample
  end
end
