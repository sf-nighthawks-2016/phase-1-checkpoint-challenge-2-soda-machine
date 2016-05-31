class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end

end

p coke = Soda.new(brand: 'Pepsi', price: 0.65, age: 1)
