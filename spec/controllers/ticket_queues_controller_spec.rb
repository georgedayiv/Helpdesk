require 'spec_helper'

describe TicketQueuesController do
  integrate_views
  
  describe "GET 'show'" do
  
    before(:each) do
      @ticket_queue = Factory(:ticket_queue)
      # Arrange for TicketQueue.find(params[:id]) to find the right user.
      TicketQueue.stub!(:find, @ticket_queue.id).and_return(@ticket_queue)
      @ticket_1 = Factory(:ticket)
      Ticket.stub!(:find, @ticket_1.id).and_return(@ticket_1)
      @ticket_2 = Factory(:ticket)
      Ticket.stub!(:find, @ticket_2.id).and_return(@ticket_2)
      @ticket_3 = Factory(:ticket)
      Ticket.stub!(:find, @ticket_3.id).and_return(@ticket_3)
    end
    
    it "should be successful" do
     get :show, :id => @ticket_queue
     response.should be_success
    end
    
    it "should include the ticket_queue name" do
     get :show, :id => @ticket_queue
     response.should have_tag("h2", /#{@ticket_queue.queue_name}/)
    end
   
    it "should list tickets by summary in the queue" do
      get :show, :id => @ticket_queue
      response.should have_tag("td",/#{@ticket_1.summary}/)
    end
      
       
    it "should not list tickets not in the queue"
    
  end    
  
  describe "GET 'new'"
  
  describe "POST 'create'"
  
  describe "GET 'index'"
   
end
