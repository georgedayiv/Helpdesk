# == Schema Information
# Schema version: 20100625181637
#
# Table name: ticket_statuses
#
#  id         :integer         not null, primary key
#  status     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class TicketStatus < ActiveRecord::Base
  validates_presence_of :status
  has_many :tickets
end
