class HomeController < ApplicationController
	def welcome
		@show_search_form = true
		search_query = nil
		search_query = params[:search_query]
		@riders = []
    	@riders = Rider.where("name LIKE ?" ,"%#{search_query}%") unless search_query.blank?
    	@user_search = true unless search_query.blank?
	end
end

