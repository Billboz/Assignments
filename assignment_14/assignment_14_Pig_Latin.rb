#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"
system 'clear'
VOWELS = ["a", "e", "i", "o", "u"]


def pigatize(passed_input_text) #Recieve data and isolate the first letter
  if starts_with_vowel(passed_input_text[0]) #Is the first letter a vowel (in second block), add "way" to the end
  pigatized_text = passed_input_text + "way"
else pigatized_text = passed_input_text.chars.rotate.join + "ay"  #Is the first letter a constanant, move it to the end and add "ay"
  end
  return pigatized_text
end


def starts_with_vowel(first_letter)
  return VOWELS.include?(first_letter) #returns a true or false
end



loop do #Capture and Clean the data in a loop do, send to pigatize
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts pigatize(text)

end

=begin
See assignment_14.rb
Using the skeleton methods, create an app to translate a word into pig latin
Then, modify the app to convert an entire phrase
Note the pig latin words in the comment of the skeleton app
Note: create your code in a file named solution.rb
=end
