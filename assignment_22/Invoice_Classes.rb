#!usr/bin/ruby

class InvoiceItem
  attr_accessor :name, :price, :quantity

  def total
    price.to_i * quantity.to_i
  end

end


class Invoice
  attr_accessor :tax, :items

  def initialize
    @tax = 0.07
    @items = []
  end

  def subtotal
    @items.each do |i|
      puts i
    end
  end

  #def tax
  #  @tax
  #end

  #def total
  #  subtotal + @tax
  #end

end
