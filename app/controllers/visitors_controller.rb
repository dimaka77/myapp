class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		flash.now[:notice] = "Welcome!"
		flash.now[:alert] = "Here I am!"
		# render 'visitors/new'
	end

end
