class UsersController < ApplicationController
  def index
    @user = { "name" => "Mostafa", "age" => 22 }
  end
end