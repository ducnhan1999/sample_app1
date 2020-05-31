class User < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, :email, presence: true
	# validates :name, length: {minimum: 2, maximum: 150}
	validates :email, length: {maximum: 255, message: "Email toi da 255 ki tu"}
	validates :email, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
	has_secure_password 
	validates :password, presence: true, length: {maximum: 72}, confirmation: true
	# validates :check_length_name, if: ->{name.present?}

	# def check_length_name
	# 	if name.size > 150
	# 		errors.add :name, "Ten qua dai"
	# 	end
	# end
end
