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

  def edit
    @history = @ticket.histories.find(params[:id])
  end

  def find_ticket
  @ticket = Ticket.find(params[:ticket_id])
  end

  def destroy
    @history = History.find(param[:id])
    @history.destroy
  end
  
  
end
