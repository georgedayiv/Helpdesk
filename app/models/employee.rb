# == Schema Information
# Schema version: 20100710023827
#
# Table name: employees
#
#  id         :integer         not null, primary key
#  login      :string(255)
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Employee < ActiveRecord::Base
has_many :tickets, :class_name => "Employee", :foreign_key => "employee_id"
has_many :histories, :class_name => "Employee", :foreign_key => "employee_id"

end
