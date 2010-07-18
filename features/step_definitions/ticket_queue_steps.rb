Given /^a new (.+)$/ do |ticket|
  @ticket = Ticket.new
end

When /^Shawn assigns #{@ticket} to (.+)$/ do |queue| 
  @ticket.tickets = queue
end

Then /^the ticket should apppear in my queue$/ do
  pending # express the regexp above with the code you wish you had
end