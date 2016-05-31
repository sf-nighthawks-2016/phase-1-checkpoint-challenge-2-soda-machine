class Soda
  attr_reader :brand, :price

  # we'll be taking an arguments as a HASH!

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end
