require 'csv'

puts 'Delete Data'
Spot.delete_all
City.delete_all
puts 'Finished Delete'

puts 'Insert City'
connection = ActiveRecord::Base.connection();
CSV.foreach('db/csv_data/city.csv') do |row|
  City.create({ city_no: row[0], name: row[1] })
  connection.execute("select setval('cities_id_seq', (select max(id) from cities))");
end
puts 'Finish City'

puts 'Insert Spot'
CSV.foreach('db/csv_data/spot.csv') do |row|
  Spot.create({ city_id: row[0], name: row[1] })
  connection.execute("select setval('spots_id_seq', (select max(id) from spots))");
end
binding.pry
puts "Finish Spot"