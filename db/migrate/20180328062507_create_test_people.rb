class CreateTestPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :test_people do |t|

      t.timestamps
    end
  end
end
