# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

#return a title on a per-page basis.
def title
	base_title = "Helpdesk"
	if @title.nil?
		base_title
	else
		"#{base_title} | #{h(@title)}"
	end
end

#Find open tickets for a ticket queue
  def open_tickets(queue)
    queue.tickets.find(:all, :conditions => "ticket_status_id ='1'")
  end
 
 #find closed tickets for a ticket queue 
  def closed_tickets(queue)
    queue.tickets.find(:all, :conditions => "ticket_status_id ='2'")
  end


end
