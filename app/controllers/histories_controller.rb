class HistoriesController < ApplicationController
	before_filter :find_ticket
	
	def index
		@histories = @ticket.histories
	end

	def show
		@history = @ticket.histories.find(params[:id])
		find_employee
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
	
 def update
	 @ticket = Ticket.find(params[:ticket_id])
	 @history = History.find(params[:id])
	 if @history.update_attributes(params[:history])
			redirect_to ticket_history_url(@ticket, @history)
	 else
			render :action => "edit"
	 end
 end
		

	def edit
		@history = @ticket.histories.find(params[:id])
	end

	def destroy
		@history = @ticket.histories.find(params[:id])
		@history.destroy
		respond_to do |format|
			format.html { redirect_to ticket_path(@ticket) }
			format.xml  { head :ok }
		end
	end

	def find_ticket
	@ticket = Ticket.find(params[:ticket_id])
	end  
	
	def find_employee
	    @employee_name = Employee.find(History.find(params[:id]).employee_id).name unless History.find(params[:id]).employee_id.nil?
  end

	
end
