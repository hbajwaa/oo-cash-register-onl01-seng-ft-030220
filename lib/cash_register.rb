class CashRegister
  attr_accessor :total, :discount, :quantity
  
  def initialize(discount =0)
    @total = 0
    @discount = discount
  
  end
  
  def add_item(title, price, quantity ) 
    @total += price * quantity
    @title = title
    @price = price
    
  end
    
end