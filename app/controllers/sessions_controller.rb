class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to root_path
  	else	
  		flash[:danger] = "#{t 'auth.login.failed'}"
  		redirect_to action: "new"
  	end
  end

  def destroy
    if session[:user_id] 
      flash[:primary] = "#{current_user.username} #{t 'auth.logout.message'}"
      session[:user_id] = nil
    end
    redirect_to root_url 
  end
end
