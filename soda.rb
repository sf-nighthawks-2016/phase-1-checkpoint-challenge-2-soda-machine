class Soda
  attr_reader :brand, :price

  # we'll be taking an arguments as a HASH!

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

#vault = Soda.new(brand:'Vault',price:0.90)
#
#p vault.soda.brand
#
#p vault.price
