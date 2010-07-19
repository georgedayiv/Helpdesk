class PagesController < ApplicationController
  def home
	  @title = "Home"
  end

  def contact
	  @title = "Contact"
  end
  
  def about
	  @title = "About"
  end
  
  def help
	@title = "Help"
  end
  
  def login
	  @title = "login"
  end
  
 def search
  @results = Ticket.search_for(params[:q])
  
    #  respond_to do |format|
    #  format.html { redirect_to(search_path) }
    #  format.xml  { head :ok }
  #end
 end
 

end
