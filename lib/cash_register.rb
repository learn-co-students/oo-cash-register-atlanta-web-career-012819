require 'pry'
class CashRegister

  attr_accessor :items, :total, :discount, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
    @last_transaction = 0
    # binding.pry
  end

  def add_item(title, price, quantity=1)
    cart = price * quantity
    self.total += cart
    quantity.times do
      @items << title
    end
    @last_transaction = cart
    # binding.pry
    # {:title => title}
    # last_transaction << title.last
      # binding.pry
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100 - discount.to_f)/ 100)).to_i
        "After the discount, the total comes to $#{self.total}."
      # binding.pry
    else
      "There is no discount to apply."
    end
  end

    # binding.pry
    def void_last_transaction
      self.total = total - @last_transaction
    end

end

#((1.to_f / 2.to_f) * 100).to_i
#(total * ((100.0 - discount.to_f)/100)).to_i
