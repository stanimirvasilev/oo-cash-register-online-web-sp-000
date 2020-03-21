
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
   #we need to treath it as a flow 
   total_discount = (discount).percentage
 @total = @total.to_f - discount.to_f
  end
  
  
end
