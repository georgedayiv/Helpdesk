class TicketQueue < ActiveRecord::Base
  validates_presence_of :queue_name
end
