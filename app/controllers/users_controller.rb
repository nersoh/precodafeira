class UsersController < ApplicationController
	respond_to :html, :json
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      # Enviar um email para o usuário confirmando o cadastro
      UserMailer.registration_confirmation(@user).deliver
  		flash[:success] =  "#{t 'sign_up.success'}"
  		redirect_to root_path 
  	else
  		render action: 'new'
  	end
  end

  private
  	def set_user
  		@user = User.find(params[:id])
  	end

  	def user_params
  		params.require(:user).permit(:username, :password, :password_confirmation, 
  			:email, :password_salt, :password_hash)
  	end
end
