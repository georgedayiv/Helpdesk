# == Schema Information
# Schema version: 20100710023827
#
# Table name: histories
#
#  id          :integer         not null, primary key
#  body        :text
#  ticket_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  employee_id :integer
#

class History < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :employee, :class_name => "Employee"
end
