class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: "User updated"
    else
      render :new, status: :unprocessable_entity  
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "User created"
    else
      render :new, status: :unprocessable_entity  
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    redirect_to users_path, notice: "User deleted"
  end

  private

  def user_params
    params.require(:user).permit(:name, :dob, :email, :phone_number)
  end
end