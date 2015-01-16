class SessionsController < ApplicationController
include SessionsHelper

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to ''
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil if logged_in?
    redirect_to root_url
  end

end
