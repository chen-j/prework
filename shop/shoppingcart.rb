class ShoppingCart
  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def checkout
    total_checkout_price = 0.0
    @items.each do |item|
      total_checkout_price += item.price
    end
    if @items.length > 5
      total_checkout_price -(total_checkout_price * 0.1)
    end
    total_checkout_price
  end
end

class Item
  attr_reader :name
	attr_reader :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def price
    @price
  end
end

class Houseware < Item
  def price
    if @price > 100
      @price - (@price * 0.05)
    else
      @price
    end
  end
end



class Fruit < Item
  def price
    weekend = [saturday, sunday]
    while weekend.include?(saturday||sunday)
      @price - (@price * 0.10)
    end
  end
end


joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(anchovies)
puts joshs_cart.checkout
