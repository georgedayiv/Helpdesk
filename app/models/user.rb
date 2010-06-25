class User < ActiveRecord::Base
validates_presence_of :name, :login
validates_length_of :login, :minimum => 4
has_many :tickets, :class_name => "User", :foreign_key => "user_id"
end
