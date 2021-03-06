class AdventuresController < ApplicationController
 
	def home
		@adventure = Adventure.first
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

	def edit
		@adventure = Adventure.find(params[:id])
	end

	def update
	    @adventure = Adventure.find(params[:id])
	    if @adventure.update_attributes(params[:adventure])
	      	redirect_to @adventure, notice: 'Adventure was successfully updated.'
	    else
	        format.html { render action: "edit" }
	    end
	end

	def ajax_record
		if params[:decision] == "undefined"
			@adventure = Adventure.find(params[:id]) #find adventure by id if we are on first state
		else
			@adventure = Adventure.find_by_id_of_story(params[:decision])  # find adventure by id_of_story
		end		
	end
end