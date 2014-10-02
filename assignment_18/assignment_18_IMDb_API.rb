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
  city = gets.chomp
  break if city == '\q'

  puts "Searching for #{city}..."


  uri = URI(QUERY_URL + "?q=#{URI.escape(city)}")
  raw_json = Net::HTTP.get(uri)

  puts uri
  puts raw_json

  parsed_data = JSON.parse(raw_json)
puts parsed_data
  parsed_data.each do |row|
    puts row["object"]
    row["main"].each do |main_row|
      puts main_row["temp"].to_i -273.15
    end
  end
  puts "\n"
end

#temp = temp_input -273.15

#json = JSON.parse(open("http://imdbapi.org?q=Fargo"){|x| x.read}).first
