Given /^Shawn assigns (.*) a new (.*)$/ do |queue,ticket|
  ticket.ticket_queue = queue.id
end

