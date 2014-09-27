#!/usr/local/bin/ruby/

# I left the other lines of code to show how I progressed to the working code.

#input = "           How can you love people when you need people? You can only use them. If I need you to make me happy, I've got to use you, I've got to manipulate you, I've got to find ways and means of winning you. I cannot let you be free. I can only love people when I have emptied my life of people. When I die to the need for people, then I'm right in the desert. In the beginning it feels awful, it feels lonely, but if you can take it for awhile, you'll suddenly discover that it isn't lonely at all. It is solitude, it is aloneness, and the desert begins to flower...But in the beginning giving up the drug can be tough, unless you have a very keen udnerstanding or unless you have suffered enough. It's a great thing to hav suffered. Only then can you get sick of it. You can make use of suffering to end suffering...A therapist says, 'Let's ease the suffering.' The spiritual director says, 'Let her suffer, she'll get sick of this way of relating to people and she'll finally decide to break out of this prison of emotional dependence on others. Shall I offer a palliative or remove a cancer? It's not easy to decide. Anthony De Mello (Awareness, pt 140-141)          "
#puts input.split.size
print "type something"
input = $stdin.gets.chomp.strip.reverse[0..-2].reverse
puts input
inputCount = input.count(" ")+1
puts inputCount
puts input.size
#input1 = input.strip # stripped the blank spaces at the begining and end of the passage and put it into a new variable
#puts input1.class #String of course
#input2 = input1.count(' ')+1
#puts input2.class
#puts input2
