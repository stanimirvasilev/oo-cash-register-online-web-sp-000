
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
   
  end
  
  
  def apply_discount
   if discount != 0 
     @total = (total * ((100.0 - discount.to_f/100)).to_i
     @total
   else
     "There is no discount to apply"
   end
     
  end
  
  
end
