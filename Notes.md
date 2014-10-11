Assignment 22

sum rails
collect/map
reject/delete_if


Assignment 23

extend assignment 22 to include pulling data from Walmart api

require 'net/http'
require 'json'

QUERY_URL = #get from walmart api docs
API_KEY = #'get from walmart'

url = URI(QUERY_URL + "?auery=#{product_search}&format=json&apiKey=#{API_KEY}&sort=relevance")
raw_json = Net::HTTP.get(url)

search_results = JSON.parse(raw_json)

puts search_results["items"]
items.each do |item|
  puts "#{item['none']}, "#{item['salePrice']}", "#{item['itemId']}", "#{item['availableOnline']}"
end

 # create Item object
 # call setter methods on Item object for each attribute
 # add the Item object to an array/collection of Item objects


#### Design Patterns .... elements of reusable object-oriented software by the gang of four

talk from one of The Iron Yard partners
like a bullet train by steve something  .... good song
john saddington ??  john.do and his email at The Iron Yard   I want my name dot com  BillBoz.com

John made it clear what the value of having a blog and twitter account and severely limiting other social media to control what is known about you.

John is a great programmer, startup success, mentor and angel investor.

#####
Coding Help

Stuff for ruby coding
- pry gem  Awesome!
- pry-debug gem  Great step through and backtrace
- debugger gem
- I think ri-doc?

try to get intellij



#####
Github Talk

git init

shaw1 algorithm key

open. opens repo in 'Finder'

logical units of work should be committed ... try to commit in meaningful groupings of changes.

git tags is a powerful way to leave a human friendly sticky note of a place that is important.  Tags are able to be put on past commits. Tags can be for just me, reference tags, and -a (annoted) tag  Uppercase version number are for everyone.  

view tags and commits with gitx
use semantic versioning

Branching protects source/Master... "git flow"

side bar.... neat app..... skitch plus

git commit -a -m "message" file.rb  "the -a does both add and commit!"
