class HistoriesController < ApplicationController
  before_filter :find_ticket
  
  def index
    @histories = @ticket.histories
  end

  def show
    @history = @ticket.histories.find(params[:id])
  end

  def new
    @history = @ticket.histories.build
  end
  
  def create
    @ticket = Ticket.find(params[:ticket_id])
    @history = @ticket.histories.build(params[:history])
    if @history.save
      redirect_to ticket_history_url(@ticket, @history)
    else
      render :action => "new"
    end  
  end
  

  def edit
    @history = @ticket.histories.find(params[:id])
  end

  def destroy
    @history = History.find(param[:id])
    @history.destroy
      respond_to do |format|
      format.html { redirect_to(ticket_url) }
      format.xml  { head :ok }
      end
  end

  def find_ticket
  @ticket = Ticket.find(params[:ticket_id])
  end  
  
end
