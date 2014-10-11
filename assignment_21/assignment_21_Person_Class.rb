require 'date'

load 'person.rb'

loop do
  person = Person.new
  puts "What is your first and last name?"
  input = $stdin.gets
  break if input.chomp.empty?
  person.name(input)

  puts "What is your birthday? (YYYY/MM/DD)"
  bday = $stdin.gets
  person.set_bday(bday)

  puts "Hello #{person.first_name}, I think you are #{person.age} years old.  Also, Mr/Mrs/Miss #{person.last_name} you are the #{Person.person_count} user."
end
