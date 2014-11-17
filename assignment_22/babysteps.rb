class Box
  attr_accessor :height#, :width, :length
end


box_instance = Box.new

loop do
  puts 'What height would you like?'
  user_input = $stdin.gets.chomp
  break if user_input.empty?
  box_instance.height = user_input

  puts "box_instance.height  #{box_instance.height}"

end


puts "box_instance.height  #{box_instance.height}"


