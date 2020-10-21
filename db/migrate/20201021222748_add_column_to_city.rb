class AddColumnToCity < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :city_id, :bigint
  end
end
