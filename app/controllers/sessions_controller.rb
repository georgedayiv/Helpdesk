class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      #Create an error message and re-render the signin form.
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      #Sign the user in and redirect to the user's show page? Maybe to something else... we'll see....
      #sign_in user
      redirect_to user
    end
  end
  

end