require 'spec_helper'

describe TicketQueuesController do
  integrate_views
  
  describe "GET 'show'" do
  
    before(:each) do
      @ticket_queue = Factory(:ticket_queue)
      # Arrange for TicketQueue.find(params[:id]) to find the right user.
      TicketQueue.stub!(:find, @ticket_queue.id).and_return(@ticket_queue)
    end
    
    it "should be successful" do
     get :show, :id => @ticket_queue
     response.should be_success
    end
    
    it "should include the ticket_queue name" do
     get :show, :id => @ticket_queue
     response.should have_tag("h2", /#{@ticket_queue.queue_name}/)
    end
   
    it "should list tickets in the queue"
    
    it "should list tickets assigned to the queue"
    
    it "should not list tickets not in the queue"
    
  end    
  
  describe "GET 'new'"
  
  describe "POST 'create'"
  
  
end
