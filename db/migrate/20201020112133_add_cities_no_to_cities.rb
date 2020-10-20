class AddCitiesNoToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :city_no, :integer
  end
end
