class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show

  end

  def edit

  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end


  def update
    if @user.id == session[:user_id]
      @user.update(user_params)
      # if @user && @user.update(user_params)
        redirect_to @user
    else
      render 'edit'
    end
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
