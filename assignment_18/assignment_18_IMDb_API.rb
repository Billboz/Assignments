#!/usr/bin/ruby/
=begin
Use IMDB's movie querying script to create a command line app which prompts the user for a movie title
Using the entered movie title, search via the API for the movie's plot (http://www.myapifilms.com/)
Print the plot to the screen
=end
system 'clear'
require 'net/http'
require 'json'
QUERY_URL = "http://api.openweathermap.org/data/2.5/weather"

loop do
  puts "Type a city and I will tell you the temperature there? (\\q to quit):"
  city = gets.chomp.capitalize
  break if city == '\q'

  puts "Searching for #{city}..."


  uri = URI(QUERY_URL + "?q=#{URI.escape(city)}")
  raw_json = Net::HTTP.get(uri)
parsed_data = JSON.parse(raw_json)

tempK = parsed_data ["main"]["temp"].to_i
tempF = ( 9.0 / 5 * ( tempK - 273 ) + 32 )
#temp = 9/5*a-273+32
=begin
b = 1.8 #9/5 intergers don't partially do decimals
c = tempK - 273
d = b*c
tempF = d + 32
=end
puts "The current temperature in #{city} is.... #{tempF}."

puts "\n"
end





#  puts parsed_data.class
#puts parsed_data.fetch
#  puts raw_json.class
#  puts parsed_data.has_key?("temp")
#  puts uri
#  puts raw_json



=begin
  parsed_data = JSON.parse(raw_json)
puts parsed_data
  parsed_data.each do |row|
    puts row["object"]
    row["main"].each do |main_row|
      puts main_row["temp"].to_i -273.15
    end
  end
=end

#temp = temp_input -273.15

#json = JSON.parse(open("http://imdbapi.org?q=Fargo"){|x| x.read}).first
