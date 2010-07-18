module TicketQueuesHelper
  
  def open_tickets(queue)
    queue.tickets.find(:all, :conditions => "ticket_status_id ='1'")
  end
  
  def closed_tickets(queue)
    queue.tickets.find(:all, :conditions => "ticket_status_id ='2'")
  end
  
  
end
