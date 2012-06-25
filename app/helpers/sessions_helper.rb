module SessionsHelper
<<<<<<< HEAD

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
=======
  def sign_in(user)
      cookies.permanent[:remember_token] = user.remember_token
      current_user = user
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
  end
  
  def signed_in?
      !current_user.nil?
  end
  
  def current_user=(user)
<<<<<<< HEAD
      puts "calling set user #{user}"
=======
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
      @current_user = user
  end
  
  def current_user
<<<<<<< HEAD
      user = User.find_by_remember_token(cookies[:remember_token])
      @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
  
  def sign_out
      cookies.delete(:remember_token)
      self.current_user = nil
  end
end
=======
      @current_user ||= user_from_remember_token
  end
  
  def sign_out
    current_user = nil
    cookies.delete(:remember_token)
  end

  private

  def user_from_remember_token
        remember_token = cookies[:remember_token]
        User.find_by_remember_token(remember_token) unless remember_token.nil?
  end
end
>>>>>>> 080a2336c7267aca2b35762ef74e73c53a75bfa7
