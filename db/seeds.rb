puts "Seeding roles..."
Audition.destroy_all
Role.destroy_all

10.times do
    Role.create(character_name: Faker::Name.first_name)
end

puts "Seeding auditions ..."

10.times do
    Audition.create(actor: Faker::Name.name, location: Faker::Address.street_name, phone: Faker::PhoneNumber.phone_number, hired: false, role_id: Role.ids.sample)
end

puts "Done seeding!"