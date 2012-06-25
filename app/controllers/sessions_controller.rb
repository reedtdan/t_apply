class SessionsController < ApplicationController
  
  def new
  end
  
  def create
      user = User.find_by_email(params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        sign_in user
        redirect_to user
      else
        flash.now[:error] = 'Invalid email/password combination'
        render 'new'
      end
    end
  
<<<<<<< HEAD
    def destroy
        sign_out
        redirect_to root_path
    end
=======
  def destroy
    sign_out
    redirect_to root_path
  end
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
  
end
