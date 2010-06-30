# == Schema Information
# Schema version: 20100625181637
#
# Table name: users
#
#  id         :integer         not null, primary key
#  login      :string(255)
#  name       :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base

EmailRegex =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates_presence_of :name, :login, :email
validates_length_of :login, :minimum => 4
validates_format_of :email, :with => EmailRegex
validates_uniqueness_of :email, :case_sensitive => false
has_many :tickets, :class_name => "User", :foreign_key => "user_id"

end
