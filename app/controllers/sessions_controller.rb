class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  	user = User.find_by_name(params[:name])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_path
  	else
  		 puts "Invalid user/password combination"
  	end
  end

  def create
  	user = User.find_by_name(params[:name])
  	if params[:name] == "pelin"
		user and user.authenticate(params[:password])
  		session[:user_id] = user.id
	    redirect_to users_url
	elsif user and user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to userproducts_url
  	else
  		redirect_to login_url, alert: "Invalid user/password combination"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	#redirect_to store_url, notice: "Logged Out"
  end
end
