#!usr/bin/ruby
#require 'pry'
require 'active_support/all'

class InvoiceItem
  attr_accessor :name, :price, :quantity
end

class Invoice
  attr_accessor :tax, :items

  def total
    items.sum { |i| (i.quantity * i.price)}
  end
end

 invoice = Invoice.new
   puts 'What is the tax in your county?'
   invoice.tax = $stdin.gets.strip.to_f.round(2) / 100

invoice.items = Array.new

loop do
    invoice_item = InvoiceItem.new
  puts 'What is product name? Press enter to quit.'
    invoice_item.name = $stdin.gets.strip
    break if invoice_item.name == ""
  puts 'What is the sale price?'
    invoice_item.price = $stdin.gets.strip.to_f.round(2)
  puts 'How many would you like?'
    invoice_item.quantity = $stdin.gets.strip.to_i

  invoice.items << invoice_item
end

invoice.items.each do |item|
  puts "Product: #{item.name}\tPrice: $#{item.price}\tQuantity: #{item.quantity}"
end

puts "Subtotal: $#{invoice.total.to_f.round(2)}"
puts "Tax (#{(invoice.tax * 100).round(2)}%): $#{(invoice.total * invoice.tax).round(2)}"
puts "Total: $#{(((1 + invoice.tax.round(2))* invoice.total)).round(2)}"