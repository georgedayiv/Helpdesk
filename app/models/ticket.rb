# == Schema Information
# Schema version: 20100625181637
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
#

class Ticket < ActiveRecord::Base
  validates_presence_of :summary, :ticket_type, :user_id, :ticket_status_id
  belongs_to :user, :class_name => "User"
  belongs_to :ticket_status
  has_many :histories
end
