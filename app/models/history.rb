# == Schema Information
# Schema version: 20100625181637
#
# Table name: histories
#
#  id         :integer         not null, primary key
#  body       :text
#  ticket_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class History < ActiveRecord::Base
  belongs_to :ticket
end
