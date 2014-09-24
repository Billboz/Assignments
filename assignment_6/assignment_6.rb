require 'date'

# Create a String variable named 'name'
name = String.new"name"
# Create a Date variable named "a_date"
a_date = Date.new(2014,9,13)
# Create an integer variable named "age"
age = 34
# Create an array of names named 'names'
names = ['Brian', 'Patrick','Mike']
# Create another array, using %w, named 'more_names'
more_names = %w['first','second','third']
# Create a Hash of names with ages named 'names_and_ages'
names_and_ages = {Brian:30, Patrick:31, Mike:29}
# Keep this part as a way to test your code
puts name.class
puts a_date.class
puts age.class
puts names.class
puts more_names.class
puts names_and_ages.class

puts name.is_a? String
puts a_date.is_a? Date
puts age.is_a? Fixnum
puts names.is_a? Array
puts more_names.is_a? Array
puts names_and_ages.is_a? Hash

# Create a String literal and print it's class (one line)
puts "bill".class
# Create a Fixnum literal and print it's class (one line)
puts 37.class
# Create an Array literal and print it's class (one line)
puts [1,2,3].class
# Create a Hash literal and print it's class (one line). Note to keep from confusing Ruby you'll have to wrap what you are outputting in parenthesis
puts ({A:1, B:2, C:3}.class)
# Create a symbol and print it's class
puts :bill.class
# Create a String constant with any name you choose
STRING = "test"
# Change the value of that constant
STRING = "REST"
# Print the constant's value to the screen
puts STRING
