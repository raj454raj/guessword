class SessionsController < ApplicationController
  def new
  end
  def create
  	user = Users.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.user_id
  		redirect_to root_url, :notice => "Logged In"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end	
  end
  def update
	user = Users.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.user_id
  		redirect_to 'new', :notice => "Logged In"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end	
  end


end
