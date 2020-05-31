class SessionsController < ApplicationController
  def new
  end

  def create
  	#tim user theo email
  	@user = User.find_by email: params[:session][:email].downcase
  	#neu ton tai user thi check password cua user
  	

  	if @user.present? && @user.authenticate(params[:session][:password])
  		flash[:success] = "Hello #{@user.name}"
  		login_user @user
  		redirect_to @user #user_path(@user)
  	else
  		#neu ko ton tai thi tra ve loi
  		flash.now[:danger] = "Error !!!!"
  		render :new
  	end
  end

  def destroy
  	session.delete(:user_id)
  	@current_user = nil
  	flash[:success] = "Goobye!!"
  	redirect_to root_path
  end
end
