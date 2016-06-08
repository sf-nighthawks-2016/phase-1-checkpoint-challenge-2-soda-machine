require_relative 'soda'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
   i = 0 
   while i < sodas.length
    if sodas[i].brand == soda_brand
      return sodas[i]
    end
    i += 1
  end
  return nil
  end

  def sell(soda_brand)
      return nil if !sodas.map(&:brand).include?(soda_brand)
      soda_to_sell = find_soda(soda_brand)
      @cash += soda_to_sell.price
      @sodas.delete(soda_to_sell)
  end

end

# driver code
# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
# mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
# coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00) 
# second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65) 

# soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)

# p soda_machine.sell("Pepsi")



