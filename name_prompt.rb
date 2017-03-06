#Simple program that collects user input and returns properly-formatted output

puts "Hello!  What\'s your first name?"
first_name = gets.chomp

puts "...your middle name?"
middle_name = gets.chomp

puts "...and finally, your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} " "#{middle_name} " "#{last_name}!"