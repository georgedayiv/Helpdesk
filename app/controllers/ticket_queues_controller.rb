class TicketQueuesController < ApplicationController

  def index
    @ticket_queues = TicketQueue.all  
  end
  
  def new
    @ticket_queue = TicketQueue.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ticket_queue }
    end
  end
  
  def create
    @ticket_queue = TicketQueue.new(params[:ticket_queue])
    
    respond_to do |format|
      if @ticket_queue.save
        flash[:notice] = "New Queue created successfully!"
        format.html { redirect_to(@ticket_queue)}
      else
        format.html { render :action => "new"}
        format.xml  { render :xml => @ticket_queue.errors, :status => :unprocessable_entity }
      end
    end
       
  end
  
  

  # GET /ticketqueues/1
  # GET /ticketqueues/1.xml
  def show
    @ticket_queue = TicketQueue.find(params[:id])
    @users = @ticket_queue.user_ids
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ticket_queue }
    end
  end
  
  # GET /ticketqueues/1/edit
  def edit
    @ticket_queue = TicketQueue.find(params[:id])
  end
  
  def update
    @ticket_queue = TicketQueue.find(params[:id])
    params[:ticket_queue][:user_ids] ||= []
    
    respond_to do |format|
      if @ticket_queue.update_attributes(params[:ticket_queue])
        flash[:notice] = "Ticket Queue was successfully updated."
        format.html {redirect_to(@ticket_queue)}
        format.xml {head :ok }
      else
        format.html {render :action => "edit"}
        format.xml {render :xml => @ticket_queue.errors, :status => :unprocessable_entity}
      end
     end     
  end
  
end
