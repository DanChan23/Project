class SessionsController < ApplicationController

def new
end

def create
  user = Account.find_by_username(params[:username])

  if user && params[:password]
  	id = Account.where(username: params[:username]).pluck(:id).first
    useruser = Person.where("account_id = ?", id).pluck(:id).first
    session[:user_id] = useruser
    redirect_to "http://localhost:3000/reservations", notice: "Logged in!"
  else
    flash.now.alert = "Username or password is invalid"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to "http://localhost:3000/login", notice: "Logged out!"
end


end
