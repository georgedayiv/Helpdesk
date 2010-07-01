# == Schema Information
# Schema version: 20100701012941
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  login              :string(255)
#  name               :string(255)
#  encrypted_password :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  email              :string(255)
#  salt               :string(255)
#

class User < ActiveRecord::Base
attr_accessor :password
attr_accessible :name, :email, :login, :password, :password_confirmation
EmailRegex =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates_presence_of :name, :login, :email, :password
validates_confirmation_of :password
validates_length_of :password, :within => 6..40
validates_length_of :login, :minimum => 4
validates_format_of :email, :with => EmailRegex
validates_uniqueness_of :email, :case_sensitive => false
has_many :tickets, :class_name => "User", :foreign_key => "user_id"

before_save :encrypt_password

	def has_password?(submitted_password)
		#compare encrypted_password with the encrypted version of the submitted password.
		encrypted_password == encrypt(submitted_password)
	end
	
	def self.authenticate(email, submitted_password)
		user= find_by_email(email)
		return nil if user.nil?
		return user if user.has_password?(submitted_password)
	end
	

private
	def encrypt_password
		self.salt = make_salt
		self.encrypted_password = encrypt(password)
	end
	
	def encrypt(string)
		secure_hash("#{salt}#{string}")
	end
	
	def make_salt
		secure_hash("#{Time.now.utc}#{password}")
	end
	
	def secure_hash(string)
		Digest::SHA2.hexdigest(string)
	end
	
end
