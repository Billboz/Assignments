#!/usr/local/bin/ruby/
=begin
Create a guessing game
The user must guess the number chosen by the app
 - rand num, input, loop, comparison
Provide feedback to the user as to if their guess is lower or higher than then number
 - compare guess to number, and puts a hint
Count the number of guesses and display at the end
 - guess counter and puts it at end
=end



num = rand(5)
puts num.class

counter = 1

puts "Step right up and play the world's best guessing game!\nSee how few guesses it takes you to guess the number between 1 and 100!\n"

loop do

  puts "Type in your guess please."
  guess = $stdin.gets
        #puts guess.class
        #puts num.class
        #puts num
  break if guess.to_i == num
        #guessI = guess.to_i
        #puts guessI
        #puts "guess is #{guess.class}"
    if guess.to_i < num
      puts "Keep your head up and pick a higher number."
    else
      puts "Don't feel down because the number you want is lower."
    end
  counter +=1
end

puts "You are a genius! You got it in #{counter} guesses!"
