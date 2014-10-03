# Assignment 17 - in class
#* Convert the questions from assignment 15 to a JSON file
#* Read and parse the JSON into an array so the rest of the app remains the same
#http://www.scifiscripts.com/scripts_a_m.html
#http://www.simplyscripts.com/a.html
#http://ruby-doc.org/stdlib-2.1.3/libdoc/net/http/rdoc/Net/HTTP.html
#http://www.ruby-doc.org/core-2.1.2/File.html
#http://jsonlint.com/
#http://json.org/
#http://www.jsoneditoronline.org/
#http://www.convertcsv.com/csv-to-json.htm

#!/usr/local/bin/ruby/

system "clear"
puts "I will ask you questions until you give up!\n\n"
puts "Press enter to begin."
gets

require 'json'

questions_json = File.read("questions.json")

questions = JSON.parse(questions_json)

puts "questions is #{questions.class} class"

qcount = 0

user_ans = Array.new
user_count = 0

 loop do
  puts questions[qcount]
  input = $stdin.gets.chomp
  user_ans[user_count] = input
  break if input == ""

  if questions.size - 1 > qcount
    qcount += 1
  else
    qcount = 0
  end
  user_count += 1
end

 #user_ans.each do |output|
#   puts " #{questions}#{output}"
 #end
