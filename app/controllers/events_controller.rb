class EventsController < ApplicationController

	def index
		@events = Event.all
	end 


	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.user_id = User.find_by(id: session[:user_id]).id
		if @event.save
			redirect_to @event
		else
			flash.now[:danger] = 'invalid'
			render 'new'
		end
	end

	def show
		@event = Event.find(params[:id])
	end

	def event_params
		params.require(:event).permit(:place, :date, :description)
	end

end
