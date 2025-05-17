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
    @user = User.new(name: params[:user][:name], email: params[:user][:email], phone_number: params[:user][:phone_number], dob: params[:user][:dob], address: params[:user][:address])
    if @user.save
        redirect_to @user, notice: "User Created!"
    else
        render :new, status: 422
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(name: params[:user][:name], email: params[:user][:email], phone_number: params[:user][:phone_number], dob: params[:user][:dob], address: params[:user][:address])
        redirect_to @user, notice: "User Updated!"
    else
        render :edit, status: 422
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end
