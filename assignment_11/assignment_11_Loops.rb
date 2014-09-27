#!/usr/local/bin/ruby/

#It's money - standard input '$stdin' gotta 'get' it! might as well get rid of the keystroke...'chomp'
print "Please enter a number between 1-10.  I will iterate it from 1. Input here   "
input = $stdin.gets.chomp.to_i
#input = 6

#while, for i in, loop, until, .times, begin until, range
num = 1
puts
while num < input+1 do
  puts("Inside the While Loop num = #{num}")
  num +=1
end
puts "Your number was #{input}"

puts
num = 1
puts

for num in 1..input
  puts("Inside the For Loop num = #{num}")
  num +=1
end
puts "Your number was #{input}"

puts
num = 1
puts

loop do
  puts ("Inside the Loop num = #{num}")
  break if input == num
  num +=1
end
puts "Your number was #{input}"

puts
num = 1
puts

until num > input do
  puts("Inside the Until Loop num = #{num}")
  num +=1
end
puts "Your number was #{input}"

puts
num = 1
puts

input.times do
  puts("Inside the Times Loop num = #{num}")
  num +=1
end
puts "Your number was #{input}"

puts
num = 1
puts

begin
  puts("Inside the Begin Loop num = #{num}")
  num +=1
end until num > input
puts "Your number was #{input}"

puts
num = 1
puts


(1..input).each do |num|
   puts "Inside the Range Loop num = #{num}"
   num += 1
 end
puts "Your number was #{input}"

puts



=begin
Assignment 11
Take an argument, and/or request input of a number from the user.
Iterate the number of times indicated by the input number
Within the loop, print the number of the iteration
Do this for each of these methods of looping: while, for i in, loop, until, .times, begin until, range
All should print from 1 to the number input by the use
=end
