require 'spec_helper'

describe SessionsController do
  integrate_views

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_tag("title", /sign in/i)
    end
  end

  describe "POST 'create'" do
  
    describe "invalid signin" do
    
      before(:each) do
        @attr = {:email => "blahfucker@bullshitadress.com", :password => "password" }
        User.should_receive(:authenticate).with(@attr[:email], @attr[:password]).and_return(nil)
      end
      
      it "should re-render the new page" do
        post :create, :session => @attr
        response.should render_template('new')
      end
           
      it "should have the right title" do
        post :create, :session => @attr
        response.should have_tag("title", /sign in/i)
      end
   
    end  
    
    describe "with valid email address and password" do
    
      before(:each) do
        @user = Factory(:user)
        @attr = { :email => @user.email, :password => @user.password }
        User.should_receive(:authenticate).with(@user.email, @user.password).and_return(@user)
      end
      
      it "should sign the user in" do
        post :create, :session => @attr
        #fill in with tests for a signed in user.
      end
      
      it "should redirect to show the user show page" do
        post :create, :session => @attr
        redirect_to user_path(@user)
      end
      
    end




  end
  
  
end