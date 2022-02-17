# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
new_city = { name: "New City", address: "Herzogstraße 38, 40215 Düsseldorf", phone_number: "0211 383223", category: "chinese" }
takumi_tonkotsu =  { name: "Takumi Tonkotsu", address: "Oststraße 51, 40211 Düsseldorf", phone_number: "0211 93654643", category: "japanese" }
le_moissonnier = { name: "Le Moissonnier", address: "Krefelder Str. 25, 50670 Köln", phone_number: "0221 729479", category: "french" }
vapiano = { name: "Vapiano", address: "Im Mediapark 1, 50670 Köln", phone_number: "0221 17062134", category: "italian" }
bon_frit = { name: "Bon Frit", address: "Palanterstraße 12A, 50937 Köln", phone_number: "0221 79007186", category: "belgian" }

[ new_city, takumi_tonkotsu, le_moissonnier, vapiano, bon_frit ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
