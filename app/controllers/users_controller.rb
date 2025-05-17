class UsersController < ApplicationController
  
#=============Index action ===============================
  def index

   @users = User.all
  end

#=============show action ===============================
  def show

   @user = User.find(params[:id])
  end 

#=============new action ===============================  
  def new
   @user = User.new
  end

#=============craete action ===============================
   def create
        @user = User.new(
          name: params[:user][:name],
          date_of_birth: params[:user][:date_of_birth],
          email: params[:user][:email],
          phone_number: params[:user][:phone_number]
        )
      
        if @user.save
          redirect_to @user, notice: 'User Created!'
        else
          render :new, status: :unprocessable_entity
        end
  end
#=============edit action ===============================
  def edit

    @user = User.find(params[:id])
  end

#=============update action ===============================
  def update
    @user = User.find(params[:id])
    if @user.update(
      name: params[:user][:name],
      email: params[:user][:email],
      phone_number: params[:user][:phone_number],
      date_of_birth: params[:user][:date_of_birth]
      )
       redirect_to @user, notice: 'User was updated successfully'
    else
      render :edit, status: :unprocessable_entity
    end 

  end

#=============delete action ===============================
def destroy
   @user = User.find(params[:id])
   @user.destroy!
   redirect_to users_path, notice: 'User Deleted!'
  end


end