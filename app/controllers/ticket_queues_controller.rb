class TicketQueuesController < ApplicationController

  # GET /ticketqueues/1
  # GET /ticketqueues/1.xml
  def show
    @ticket_queue = TicketQueue.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ticket_queue }
    end
  end

end
