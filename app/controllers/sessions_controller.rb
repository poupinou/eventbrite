class SessionsController < ApplicationController
	def new

	end

	def create
   user = User.find_by(name: params[:session][:name].downcase)
     log_in user
     params[:session][:remember_me] == '1' ? remember(user) : forget(user)
     remember user
     redirect_to home_path
   
  	end

	

	def destroy
		log_out
		redirect_to home_path
	end
end
