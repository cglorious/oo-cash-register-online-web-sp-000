class CashRegister

  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, amount, quantity = 1)
    self.total += amount * quantity
    @items.fill(item, @items.size, quantity)
  end

  def apply_discount
    self.total = (@total * ((100 - @discount.to_f)/100)).to_i
    if @discount > 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total - @amounts[@amounts.length - 1]
    #delete amount from total
    #self.total -
  end

end
