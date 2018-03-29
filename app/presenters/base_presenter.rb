class BasePresenter
	def initialize(object, template)
		@object = object
		@template = template
	end


	def self.presents(name)
		define_name(name) do
			@object
		end 
	end
end