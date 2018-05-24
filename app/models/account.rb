class Account < ApplicationRecord

	attr_accessor :password
	EMAIL_REGEX = /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :username, :password, :email_add, :presence => true
	validates :username, :password, length: {in: 6..20}
	validates :email_add, :uniqueness => true, :format => EMAIL_REGEX
	validates :password, :confirmation => true
	validates :username, :uniqueness => true
end
