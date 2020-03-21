
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
    @total = @total - (discount.to_f).percent_of(@total.to_f)
  # total = totala - (X)% discount ot totala 
  end
  
  
end
