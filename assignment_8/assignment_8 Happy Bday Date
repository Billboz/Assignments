#!/usr/local/bin/ruby
# must require the date library
require 'date'

# if no argument (ARGV) is passed with the execution Then....
if ARGV.size == 0

  print "What is your name?"
  nameS = $stdin.gets.chomp
  #puts names.class
  print "What day is your birthday? (YYYY/MM/DD)"
  bdayS = $stdin.gets.chomp
  #puts bday.class

  #name is a string so the method .capitalize will work
  puts "Happy Birthday #{nameS.capitalize}!"
  #Date.parse converts the bdayS String to the bdayD Date
  bdayD = Date.parse bdayS
  #bdayD is formatted and printed but does not change bdayD
  puts bdayD.strftime('%A, %B %d, %Y')
  #puts bday.class
else
  #the arg[0] is a String so .capitalize works and it is printed
  puts "Happy Birthday #{ARGV[0].capitalize}."
  #the arg[1] is a String, Date.parse changes it to a Date and stores it in bdayD
  bdayD = Date.parse ARGV[1]
  #bdayD is now a Date therefore the .strftime can format the Date and then its printed
  puts bdayD.strftime('%A, %B %d, %Y')
  #puts bday.class
end
