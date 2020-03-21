require "pry"
class CashRegister
  
  attr_accessor :total, :item, :discount
  
  def initialize(discount = 0)
    @item = []
    @total = 0
    @discount = discount
  end
  
  def add_item(item, cost = 0, number_items = 1)
    @total += cost * number_items
    @item << item 
   #binding.pry
  end
  
  
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @item
  end  

  
end
