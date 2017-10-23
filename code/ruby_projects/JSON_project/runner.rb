# pretty print for output styles
require 'pp'
require_relative 'user'

# generate new user
user = User.new 'flausch@example.com', 'Ruby'

# output the object
pp user

# use save method
user.save