#!/usr/local/bin/ruby/

=begin
Assignment 12
Create an array of questions
Ask a question of the user, from the array
Continue asking questions until the user enters without giving an answer
When you run out of questions, start over
For extra credit: Save all the answers with the questions, and print a summary at the end
=end

system "clear"

puts "I will ask you questions until you give up!\n\n"
puts "Press enter to begin."
gets

questions_file = File.new("question.txt", 'r')
questions = questions_file.readlines
puts questions.class
puts questions[0]

#questions = ["What is 1?[0]", "What is 2?[1]", "What is 3?[2]", "What is 4?[3]"]
#array.each_with_index{|val, index| puts "#{val} => #{index}"}

qcount = 0


user_ans = Array.new
user_count = 0

 loop do
  puts questions[qcount] #int
  input = $stdin.gets.chomp #string
  user_ans[user_count] = input #inum is an array
  break if input == ""

  if questions.size - 1 > qcount
    qcount += 1
  else
    qcount = 0
  end
  user_count += 1
end

 user_ans.each do |output|
   puts " #{questions}#{output}"
 end



#break if input

#  qcount +=1 #somehow I had this increment and the questions cycled through more than once but now they don't???
#  icount +=1
#end

=begin
icount = 0
inum = Array.new



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
