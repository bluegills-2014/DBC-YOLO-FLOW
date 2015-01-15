class SessionsController < ApplicationController


  def create
    user = User.find_by(username: params[:username].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to ''
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  def log_out
    session[:user_id] = nil
  end

end
