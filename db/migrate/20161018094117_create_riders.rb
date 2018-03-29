class CreateRiders < ActiveRecord::Migration[5.0]
  def change
    create_table :riders do |t|
      t.string :email, null: false, default: "", unique: true
      t.string :password 
      t.string :salt
      t.string :name
      t.string :city
      t.string :bike
      t.integer :age

      t.timestamps
    end
  end
end
