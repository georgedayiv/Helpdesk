class Ticket < ActiveRecord::Base
  validates_presence_of :summary, :ticket_type, :user_id, :ticket_status_id
  belongs_to :user, :class_name => "User"
  belongs_to :ticket_status
end
