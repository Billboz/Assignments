#!usr/bin/ruby
require 'active_support/all'

class InvoiceItem
  attr_accessor :name, :price, :quantity
=begin
  def total
    price.to_i * quantity.to_i
  end
=end
end


class Invoice
  attr_accessor :tax, :items

  def initialize
    @tax = 0.07
    @items = Array.new
  end

  def subtotal
    @items.each do |i|
     # puts i.price.to_i * i.quantity.to_i
     # puts (i.price.to_i)
      @items.sum { |p| p.price.to_i * p.quantity.to_i }
      @items.sum(&:price)
    end
  end

end

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
  puts "invoice.tax           #{invoice.tax}"
  puts "invoiceItem.total     #{invoice_item.total}"

end

#puts "invoice.item        #{invoice.items}"
puts invoice.subtotal

