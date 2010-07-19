# == Schema Information
# Schema version: 20100713013422
#
# Table name: tickets
#
#  id               :integer         not null, primary key
#  summary          :string(255)
#  ticket_type      :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  user_id          :integer
#  ticket_status_id :integer
#  employee_id      :integer
#  ticket_queue_id  :integer
#

class Ticket < ActiveRecord::Base
  validates_presence_of :summary, :ticket_type, :user_id, :ticket_status_id
  belongs_to :user, :class_name => "User"
  belongs_to :ticket_status
  belongs_to :employee, :class_name => "Employee"
  has_many :histories
  belongs_to :ticket_queue 
  
  scoped_search :on => :summary
  scoped_search :on => :ticket_type
  scoped_search :on => :updated_at
  scoped_search :on => :created_at
  scoped_search :in => :histories, :on => :body
  scoped_search :in => :histories, :on => :created_at
  scoped_search :in => :histories, :on => :updated_at
  
  
end
