class UsersController < ApplicationController
	before_action :is_login?, only: [:show] #trc khi vao action show thi ktra login chua
	def show
		@user = User.find_by id: params[:id]
	end

	def new 
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			#xu ly thanh cong
			flash[:success] = "Create account success !!!"
			redirect_to @user #show ra thông tin user vừa tạo
		else
			#xu ly that bai
			flash.now[:danger] = "Create account fail !!!"
			render :new
		end
	end

	private 
	def user_params
		params.require(:user).permit :name, :email, :password, :password_confirmation #chỉ chấp nhận 4 thuộc tính này
	end

	

end
