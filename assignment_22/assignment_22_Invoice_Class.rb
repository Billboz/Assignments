#!usr/bin/ruby
#require 'pry'

load 'Invoice_Classes.rb'
invoice = Invoice.new

loop do
    invoice_item = InvoiceItem.new

  puts 'What is product name?'
    invoice_item.name          = $stdin.gets.chomp
    break if invoice_item.name == ""
  puts 'What is the sale price?'
    invoice_item.price         = $stdin.gets.chomp
  puts 'How many would you like?'
    invoice_item.quantity      = $stdin.gets.chomp

  invoice.items << invoice_item

  #puts "invoice_item.total  #{invoice_item.total}"
  #puts "invoice.item        #{invoice.items}"
  puts "invoice.tax         #{invoice.tax}"

end

  #puts "invoice.item        #{invoice.items}"
  invoice.subtotal



