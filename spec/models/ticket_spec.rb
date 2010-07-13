require 'spec_helper'

describe Ticket do
  before(:each) do
    @attr = {
      :summary => "blah summary",
      :ticket_type => "test",
      :user_id => 1,
      :ticket_status_id => 1,
      :ticket_queue_id => 1      
    }
  end

  it "should create a new instance given valid attributes" do
    Ticket.create!(@attr)
  end
  
  it "should belong to any ticket_queue assigned to it" do
  @ticket = Ticket.new(@attr.merge(:ticket_queue_id => 1))
  @ticket.ticket_queue_id.should == 1
  end
  
  it "should not belong to a ticket_queue not assigned to it" do
    @ticket = Ticket.new(@attr)
    @ticket.ticket_queue_id.should_not == 2
  end
  
  
  
  
end
