class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.datetime :ride_date
      t.text :riders_list
      t.text :locations_list
      
      t.timestamps
    end
  end
end
