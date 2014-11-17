#!/usr/bin/ruby

require 'active_support'
require 'active_support/all'

class InvoiceItem

  attr_accessor :product_name
  attr_accessor :sales_price
  attr_accessor :quantity

end

class Invoice

  attr_accessor :tax_rate
  attr_accessor :items

  def total
    @items.delete_if {|item| item.quantity == 0}
    invoice_total = @items.sum { |i| (i.quantity * i.sales_price) }
  end

end

invoice = Invoice.new
print "Please enter the tax rate for your county: "
invoice.tax_rate = gets.strip.to_f.round(2) / 100

invoice.items = Array.new
loop do
  invoice_item = InvoiceItem.new
  print "Please enter the name of the product (press ENTER to quit): "
  invoice_item.product_name = gets.strip
  break if invoice_item.product_name == ""
  print "Please enter the sales price: "
  invoice_item.sales_price = gets.strip.to_f.round(2)
  print "How many are you ordering: "
  invoice_item.quantity = gets.strip.to_i
  invoice.items << invoice_item
end

invoice.items.each do |item|
  puts "Product: #{item.product_name}\tPrice: #{item.sales_price}\tQuantity: #{item.quantity}"
end

invoice_total = invoice.total
puts "Total: #{invoice_total.round(2)}"
puts "Tax (#{(invoice.tax_rate * 100).round(2)}%): #{ (invoice_total * invoice.tax_rate).round(2) }"
puts "Total with Tax (#{(invoice.tax_rate * 100).round(2)}%): #{ (invoice_total * invoice.tax_rate ).round(2) + invoice_total}"