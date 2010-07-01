# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
	user.name			"George Day"
	user.email			"georgedayiv@gmail.com"
	user.password		"jinlai"
	user.password_confirmation	"jinlai"
	user.login			"gday"
end
