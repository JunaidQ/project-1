class AdventuresController < ApplicationController

	def home
	end	

	def new
		@adventure = Adventure.new
	end

	def create
		@adventure = Adventure.new(params[:adventure])
	  if @adventure.save
	  	redirect_to new_adventure_path, notice: 'Adventure was successfully created.'
	  else
	  	render action: "new"
	  end
	end

end