class AddPasswordDigestToRiders < ActiveRecord::Migration[5.0]
  def change
  	add_column :riders, :password_digest, :string
  end
end
