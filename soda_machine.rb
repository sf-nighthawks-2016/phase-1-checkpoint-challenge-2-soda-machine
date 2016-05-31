require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
      @sodas.length
  end

  # This is currently not working properly.
  # It works for the #find_soda tests,
  # But does not return properly in the #sell method.
  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end


  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda != nil
      sold_soda_index = @sodas.index(soda)
      @sodas.delete_at(sold_soda_index)
      @cash += soda.price
    else
      soda
    end
  end

end

# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
# coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
# mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

# soda_machine = SodaMachine.new(sodas: [pepsi, coke_zero, mountain_dew, pepsi], cash: 1.00)
# p soda_machine.sodas
# p soda_machine.cash
# p soda_machine.sell('Pepsi')
# p soda_machine.find_soda('Pepsi')
# p soda_machine.cash



