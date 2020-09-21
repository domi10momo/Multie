require 'csv'

puts 'Delete Data'
City.delete_all
Spot.delete_all
puts 'Finished Delete'

puts 'Insert City'
CSV.foreach('db/csv_data/city.csv') do |row|
  City.create({ name: row[0] })
end
puts 'Finish City'

puts 'Insert Spot'
CSV.foreach('db/csv_data/spot.csv') do |row|
  Spot.create({ city_id: row[0], name: row[1] })
end
puts "Finish Spot"