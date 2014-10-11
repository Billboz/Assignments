#!/usr/bin/ruby/
require 'date'


print "What is your name?"
nameS = $stdin.gets.chomp

loop do
print "What day is your birthday? (YYYY/MM/DD)"
bdayS = $stdin.gets.chomp
bdayD = Date.parse bdayS
today = Date.today

  if today == bdayD
    puts "HAPPY BIRTHDAY #{nameS.capitalize}!!"
    break
   else
    age = today - bdayD 
    age_now = age.numerator / 365
    puts "Your age is #{age_now}.  I will ask you again tomorrow:)"
  end
end







=begin
else
  #the arg[0] is a String so .capitalize works and it is printed
  puts "Happy Birthday #{ARGV[0].capitalize}."
  #the arg[1] is a String, Date.parse changes it to a Date and stores it in bdayD
  bdayD = Date.parse ARGV[1]
  #bdayD is now a Date therefore the .strftime can format the Date and then its printed
  puts bdayD.strftime('%A, %B %d, %Y')
  #puts bday.class


  #name is a string so the method .capitalize will work
  puts "Happy Birthday #{nameS.capitalize}!"

  #bdayD is formatted and printed but does not change bdayD
  puts bdayD.strftime('%A, %B %d, %Y')



end
=end
