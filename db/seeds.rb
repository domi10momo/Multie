require 'csv'

puts 'Delete Data'
Spot.delete_all
City.delete_all
puts 'Finished Delete'

puts 'Insert City'
CSV.foreach('db/csv_data/city.csv') do |row|
  City.create({ name: row[0] })
end
puts 'Finish City'

puts 'Insert Spot'
CSV.foreach('db/csv_data/spot.csv') do |row|
  #puts "#{row[0]}  #{row[1]}"
  Spot.create({ city_id: row[0], name: row[1] })
end
binding.pry
puts "Finish Spot"