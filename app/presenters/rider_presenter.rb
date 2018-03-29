class RiderPresenter < BasePresenter
	presents :rider

	def age
		rider.age
	end
end