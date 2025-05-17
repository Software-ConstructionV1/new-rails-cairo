class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(name: params[:user][:name], DOB: params[:user][:DOB], email: params[:user][:email], phone_number: params[:user][:phone_number])
    if @user.save
      redirect_to @user, notice: "User created successfully !"
    else
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(name: params[:user][:name], DOB: params[:user][:DOB], email: params[:user][:email], phone_number: params[:user][:phone_number])
      redirect_to @user
    else
      render :edit, status: 422
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    redirect_to users_path
  end
end