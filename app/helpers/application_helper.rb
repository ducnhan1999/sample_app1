module ApplicationHelper
	def current_user
		@current_user ||=  User.find_by id: session[:user_id]
	end

	def login_user user
		session[:user_id] = user.id
	end

	def is_login?
		#neu co thi tra ve doi tuong
		return if current_user 
		#neu ko thi thong bao va chuyen ve trang login
			flash[:danger] = "You need login"
			redirect_to login_path
		end	
	end
