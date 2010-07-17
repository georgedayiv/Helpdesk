require 'spec_helper'

describe TicketsController do
  integrate_views
  
  
  before(:each) do
    @ticket =Factory(:ticket)
    Ticket.stub!(:find, @ticket.id).and_return(@ticket)
  end
  
  describe "Get 'show'"
  
  describe "Get 'index'"
  
  describe "Get 'new'" do
    it "should be successful" do
    get 'new'
    response.should be_success
    end
  end
  
  describe "Post 'create'"
    describe "success"
    describe "failure"
  
  
    
end
