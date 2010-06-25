class TicketStatus < ActiveRecord::Base
  validates_presence_of :status
  has_many :tickets
end
