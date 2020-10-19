class CreateWants < ActiveRecord::Migration[6.0]
  def change
    create_table :wants do |t|
      t.integer :user_id, null: false, index: true
      t.integer :spot_id, null: false, index: true

      t.timestamps
    end
    add_index :wants, [:user_id, :spot_id], unique: true
    #Ex:- add_index("admin_users", "username")
    #Ex:- add_index("admin_users", "username")    
  end
end
