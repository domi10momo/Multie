require 'csv'

def reset_id(table_name)
  connection = ActiveRecord::Base.connection;
  connection.execute("select setval('#{table_name}_id_seq',(select max(id) from #{table_name}))");
end

puts 'Delete Data'
Spot.delete_all
City.delete_all
puts 'Finished Delete'

puts 'Insert City'
CSV.foreach('db/csv_data/city.csv') do |row|
  City.create({ city_id: row[0], name: row[1] })
end
reset_id("cities")
puts 'Finish City'

puts 'Insert Spot'
CSV.foreach('db/csv_data/spot.csv') do |row|
  Spot.create({ city_id: row[0], name: row[1] })
end
reset_id("spots")
binding.pry
puts "Finish Spot"

