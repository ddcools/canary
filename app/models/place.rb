class Place < ApplicationRecord

	DEAFULT_PLACE = "UDUPI"

	default_scope { where(:place_type => "") }

	scope :welcome, -> { where(:lat => "testdsfgsdfgsdfg" )}

	include PlaceRefo

	def test_pro
		test_one
	end

  private

  def self.my_method
    puts "regular method"
  end

end
