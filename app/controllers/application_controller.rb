class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  private
	  def current_user
	  	@current_user ||=  User.find(session[:user_id]) if session[:user_id]
	  end
	  
	  # Helper para verificação de login
		def required_login
			unless current_user
			  flash[:danger] = 'Log in is required'
			  redirect_to login_path
			end
		end
end
