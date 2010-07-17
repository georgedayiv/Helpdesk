# == Schema Information
# Schema version: 20100713013422
#
# Table name: ticket_queues
#
#  id         :integer         not null, primary key
#  queue_name :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TicketQueue < ActiveRecord::Base
  validates_presence_of :queue_name
  has_and_belongs_to_many :users, :join_table => "ticket_queues_users"
  
end
