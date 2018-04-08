class StarsController < ApplicationController

	def index
		@stars = Star.all
	end
	
	def new

	end	

	def create 
		star = Star.new
		star.title = params[:title]
		star.content = params[:content]
		star.priority = params[:priority]
		star.save

		redirect_to action: 'index'
	end	

	def destroy
	    star_id = params[:id] 
	    Star.destroy(star_id)
	    redirect_to action: 'index'
  	end 

	def update_view
		star_id = params[:id]
    	@the_selected_star = Star.find(star_id)
	end
	
	def the_real_update
		star_id = params[:id]
	    @the_selected_star = Star.find(star_id) 
	    
	    @the_selected_star.title = params[:title]
	    @the_selected_star.content = params[:content]
	    @the_selected_star.priority = params[:priority]
	    @the_selected_star.save
	    redirect_to action: 'index'
	end	

	def create_goal
		star_id = params[:id] 
		goal = Goal.new
	    goal.title = params[:title]
	    goal.star_id = params[:star_id]
	    goal.done = params[:done]
	    goal.save
	    redirect_to action: 'index' 
	end	
end
