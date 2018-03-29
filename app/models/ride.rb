class Ride < ApplicationRecord
	serialize :riders_list
	serialize :locations_list
	has_many :rides
	has_many :places 
end
