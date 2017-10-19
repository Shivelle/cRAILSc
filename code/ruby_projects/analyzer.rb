# todo
# get user's first name & last name
# display greeting: 'Welcome to the analyzer!'
# output of user's first name and last name: 'Your first name is X characters. Your last name is Y characters.'
# display reverse version of user's first name and last name

puts "Hey User! What's your first name?"
first_name = gets.chomp

puts "Thank you! What's your last name?"
last_name = gets.chomp

name = first_name + " " + last_name

puts "Hello #{name}, welcome to the analyzer!"
puts "Your first name has #{first_name.length} characters. Your last name has #{last_name.length} characters."
puts "Your full name reversed reads: #{name.reverse}"

puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is:  #{first_number.to_i * second_number.to_i} "


# todo 
# the first number divided by the second number is
# the first number substracted from the second number is
# the first number mod of the second number is

puts "The first number divided by the second number is:  #{first_number.to_i / second_number.to_i} "
puts "The first number substracted by the second number is:  #{second_number.to_i - first_number.to_i} "
puts "The first number mod of the second number is:  #{first_number.to_i % second_number.to_i} "