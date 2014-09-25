#!/usr/local/bin/ruby/
# Take the string "Hello World" and split it on whitespace. Show two ways to do this.
stringS = "Hello World"
puts stringS.split
puts stringS.split(/\.?\s+/)

# Use the Peter Piper tongue twister and split it on 'pick'
pickS = "Peter Piper picked a peck of pickled peppers.
A peck of pickled peppers Peter Piper picked.
If Peter Piper picked a peck of pickled peppers,
Where's the peck of pickled peppers that Peter Piper picked?"
puts pickS.split(/pick/)

# Use gsub only to change the first passage to the second in the fewest amount of commands:
textS = "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

puts textS.gsub("You","I").gsub("you","I").gsub("YOU","I") #LOL I would need a lot more of these


# Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."
# Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

# Write code to determine how many times 'sh' occurs in the following phrase:
# There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!
sh_textS = "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!"

sh_count = sh_textS.scan "sh"
#puts sh_count
#puts sh_count.class #Array
puts sh_count.count

# In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.

sho_count = sh_textS.scan "sho"
puts sho_count.count


# Match the word `foot` but not `football` in this phrase:
# He played football despite having an artificial foot.
footS = "He played football despite having an artificial foot."
matched = /\bHe\b/.match(footS)
puts matched.class
puts matched
puts /foot/.class


# Match the last `sits` in a phrase using this phrase:
# I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits.
sitsS = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."
sitsS.scan(/sits(?!.*sits)/)
puts sitsS.class
