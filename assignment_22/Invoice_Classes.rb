#!usr/bin/ruby

class InvoiceItem
  attr_accessor :product_name, :sale_price, :quantity, :tax_percentage
end


class Invoice
  
  def InvoiceItem_total

    #calculate sale_price / reject blank/$0 amounts
  end
end
