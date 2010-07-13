require 'spec_helper'

describe TicketQueue do
  before(:each) do
    @attr = {
      :queue_name => "value for queue_name"
    }
  end

  it "should create a new instance given valid attributes" do
    TicketQueue.create!(@attr)
  end
  
  it "should require a name" do
    no_name_queue = TicketQueue.new(@attr.merge(:queue_name =>""))
    no_name_queue.should_not be_valid
  end
    
  
end
