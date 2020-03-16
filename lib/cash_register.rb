class CashRegister
  attr_accessor :total, :discount, :quantity
  
  def initialize(discount =0)
    @total = 0
    @discount = discount
  
  end
  
  def add_item(title, price, quantity = 1)  
    @total += price * quantity
   
  end
  
  def apply_discount
    @total = total/100 * @discount
  end
    
end