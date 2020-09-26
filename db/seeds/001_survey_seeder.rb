10.times do 
  Survey.create(
    name: Faker::Games::DnD.city
  )
end