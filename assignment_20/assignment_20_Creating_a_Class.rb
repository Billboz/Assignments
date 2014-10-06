class String

  def pigatize
#binding.pry
    self.split.collect {|x| pigatize_word(x)}
  end


private
#binding.pry
  VOWELS = ["a", "e", "i", "o", "u"]

  def pigatize_word(word)
    if starts_with_vowel(word[0])
    pigatized_word = word + "way"

  else pigatized_word = word.chars.rotate.join + "ay"
    end
    return pigatized_word
  end


  def starts_with_vowel(first_letter)
    return VOWELS.include?(first_letter)
  end
end


loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts "\n#{text.pigatize.join" "}\n\n"

end
