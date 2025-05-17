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
    puts params[:user]
    @user = User.new(name: params[:user][:name], date_of_birth: params[:user][:date_of_birth], email: params[:user][:email], phone_number: params[:user][:phone_number],address: '21 elFardous st.')
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(name: params[:user][:name], date_of_birth: params[:user][:date_of_birth], email: params[:user][:email], phone_number: params[:user][:phone_number])
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to @user, notice: 'User was successfully destroyed.'
  end
end
