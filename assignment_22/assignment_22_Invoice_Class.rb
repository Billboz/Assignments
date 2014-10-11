#!usr/bin/ruby

load 'Invoice_Classes.rb'

loop do

  puts "Would you like to buy one of our great products?\n Press enter to continue and \\q to quit."
  break if $stdin.gets.chomp == '\q'

  invoice = Invoice.new

  puts "What is product name?"
    product_name     =$stdin.gets.chomp
  puts "What is the sale price?"
    sale_price       =$stdin.gets.chomp
  puts "How many would you like?"
    quantity         =$stdin.gets.chomp
  puts "What is the sales tax for your area?"
    tax_percentage   =$stdin.gets.chomp

  puts "Sale price:#{}\n"
  puts "Quantity:#{}\n"
  puts "What is the sales tax for your area#{}\n"
  puts "Product name: #{}\n"

  puts "subtotal is : #{}\n"
  puts "sales tax is: #{}\n"
  puts "TOTAL       : #{}\n"
end
