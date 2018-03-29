class Rider < ApplicationRecord
  has_secure_password
  
  validates_presence_of :email, :password, :name, :city, :bike, :age 
  validates :password, length: { minimum: 6 }

  scope :age, -> { where(created_at: 'desc') }


  def as_json
  	super(only: [:email, :name, :city, :bike, :age])
  end

  def print_name
	"MY NAME"
  end
  
end
