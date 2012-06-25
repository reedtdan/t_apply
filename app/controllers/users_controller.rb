class UsersController < ApplicationController
  def show
      @user = User.find(params[:id])
  end
  
  def new
       @user = User.new
  end
  
  def create
      @user = User.new(params[:user])
      if @user.save
        sign_in @user
<<<<<<< HEAD
        flash[:success] = "Welcome to the Telluride Application!"
=======
        flash[:success] = "Thank you for your interest in the Telluride House!"
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
        redirect_to @user
      else
        render 'new'
      end
    end
end
