# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
	user.name			"George Day"
	user.email			"georgedayiv@gmail.com"
	user.password		"jinlai"
	user.password_confirmation	"jinlai"
	user.login			"gday"
end

Factory.define :ticket_queue do |ticket_queue|
  ticket_queue.queue_name "George"
end

