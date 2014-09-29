#!/usr/local/bin/ruby/
#Vars - question count Int (qcount), input count Array (icount), input number Int (inum), input String, questions String,
#Loop of arrayed questions that capture an array of answers and prints them with the questions.

system "clear"

puts "I will ask you questions until you give up!"
puts
puts "Press enter to begin."
gets


questions = ["What is 1?[0]", "What is 2?[1]", "What is 3?[2]", "What is 4?[3]"]
#array.each_with_index{|val, index| puts "#{val} => #{index}"}

qcount = 0
icount = 1
inum = Array.new

 loop do
  puts
  puts questions[qcount] #int
#  puts "questions is a #{questions.class} index number is #{qcount}"
  input = $stdin.gets.chomp #string
#  puts input
#  puts "input is a #{input.class}"
  inum[icount] = input #inum is an array
#  puts "inum is an #{inum.class} icount number is #{icount}"


  qcount +=1 #somehow I had this increment and the questions cycled through more than once but now they don't???
  icount +=1
=begin

  if input != ""
    puts "continue"
#    puts inum
#    puts "The total number of answered questions is #{icount}."
    else
#    puts icount -1
    break
  end
=end


#  puts "Here is the question #{questions} and the answer #{input}" #This doesn't work
#  break if input == ""
#  qcount +=1
#  icount +=1
#  break if input == ""
#  icount -1
#  puts "inum is an #{inum.class} icount final number is #{icount}"

end



=begin
Assignment 12
Create an array of questions
Ask a question of the user, from the array
Continue asking questions until the user enters without giving an answer
When you run out of questions, start over
For extra credit: Save all the answers with the questions, and print a summary at the end
=end
