puts "Cleaning database..."
Flat.destroy_all

puts "Creating fake flats..."

6.times do
  Flat.create!(
    name: "#{Faker::Lorem.word} #{Faker::Lorem.word} #{["flat", "house", "appartment"].sample}",
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Lorem.paragraph(sentence_count: 2, random_sentences_to_add: 3),
    price_per_night: rand(50..200),
    number_of_guests: rand(1..6),
    image: ["https://source.unsplash.com/random/?house", "https://source.unsplash.com/random/?home", "https://source.unsplash.com/random/?appartment"].sample
  )
end

puts "Finished!"
