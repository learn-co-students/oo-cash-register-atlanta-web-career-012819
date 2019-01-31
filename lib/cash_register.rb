class CashRegister
  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @last_item = 0
  end
  attr_accessor :discount
  attr_accessor :total
  attr_accessor :items
  def add_item(title, price, num=1)
    @total += (price * num)
    @last_item = price
    num.times { @items << title }
  end

  def apply_discount
    if @discount != 0
      @total = @total * ((100.0 - @discount)/100)

      return "After the discount, the total comes to $#{@total.to_int}."
    else
      return "There is no discount to apply."
    end
  end
  def void_last_transaction
    @total -= @last_item
  end


end
