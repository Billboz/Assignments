!#/usr/bin/ruby/
require 'net/http'
#point out there to a source
script_text = Net::HTTP.get(URI('http://www.scifiscripts.com/scripts/13th_floor.txt'))
#put into a var
#script_text = Net::HTTP.get(uri)....
#String class
#create file
file = File.new("script.txt", "a")
file.write(script_text)
file.close



















#http://www.scifiscripts.com/scripts_a_m.html
#http://www.simplyscripts.com/a.html

#http://www.scifiscripts.com/scripts_a_m.html
#http://www.simplyscripts.com/a.html
