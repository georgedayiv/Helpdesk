module TicketsHelper
  
  def queue_name(ticket)
    TicketQueue.find(Ticket.find(ticket).ticket_queue_id).queue_name
  end
  
end
