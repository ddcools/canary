module ApplicationHelper

	def present(object, klass =nil)
		klass ||= "#{object.class}Presenter".constantize
		presenter = klass.new(object, self)
		yield presenter if block_givern?
		presenter
	end

end
