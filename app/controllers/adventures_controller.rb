class AdventuresController < ApplicationController

  def new
  	@adventure = Adventure.new
  end

  def create
  	@adventure = Adventure.create!(params[:adventure])
  	if @adventure.save 	
  end

end