class CashRegister
  attr_accessor :total, :discount,:items
  
  def initialize(discount =0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)  
    @total += price * quantity
    @price = price
    @title = title
    quantity.times { @items << title }
   
  end
  
  def apply_discount
    if discount == 0
       "There is no discount to apply."
     else
       @total -= (@total * (@discount / 100.0)).to_i
       "After the discount, the total comes to $#{@total}."
     end
   end
   
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @price
    
      self.total = 0
   
    
  end
    
    
end
