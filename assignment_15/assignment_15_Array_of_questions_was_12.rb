#!/usr/local/bin/ruby/

=begin
Assignment 12
Create an array of questions
Ask a question of the user, from the array
Continue asking questions until the user enters without giving an answer
When you run out of questions, start over
For extra credit: Save all the answers with the questions, and print a summary at the end
=end

#system "clear"
#require pry
puts "I will ask you questions until you give up!\n\n"
puts "Press enter to begin."
gets

questions_file = File.new("questions.txt", 'r')
questions = questions_file.readlines
index = 0
number_of_questions = 0

user_ans = Array.new
user_count = 0
#binding.pry
loop do

  puts questions[index]

  input = $stdin.gets.chomp

  user_ans[user_count] = input

  if input == ""
    puts  user_ans[user_count]
    break
  end
  user_count += 1
  if index >= questions.size - 1
    index = 0
  else
    index +=1

  end
end
#num = 0
#binding.pry
for num in 1..questions.size
    puts "#{questions[num]}" + " #{user_ans[num]}"
    num +=2
  #  puts "#{questions[0]}" + "#{user_ans[0]}" The data exists but I haven't figure out how to access [0] of the array
  #  puts "#{questions[1]}" + "#{user_ans[1]}"  Also the incrementer doesn't seem to be working since what is printed
  #  puts "#{questions[2]}" + "#{user_ans[2]}"   is only incremented by 1??
  #  puts "#{questions[3]}" + "#{user_ans[3]}"
end
#  puts "#{questions[num]} #{user_ans[num]}"
