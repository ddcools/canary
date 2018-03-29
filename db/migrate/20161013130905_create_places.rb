class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :place_name
      t.string :type
      t.string :lat
      t.string :lng
      t.string :state

      t.timestamps
    end
  end
end
