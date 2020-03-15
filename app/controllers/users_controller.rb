class UsersController < ApplicationController
skip_before_action :login_required, {only: [:create,:new]}

  def index
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to login_path
    else
        render :new
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'login_path'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name,:password,:password_confirmation,:nickname,:born_date,:born_month,:email,:message,:from,:old,:image)
  end
  
end

