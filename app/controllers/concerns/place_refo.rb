module PlaceRefo
	extend ActiveSupport::Concern
	included do 
		def test_one
			puts "TEST"
		end
	end
end