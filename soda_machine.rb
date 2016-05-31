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
    if @sodas.include?(soda_brand)
      item = @sodas.index(soda_brand)
      return @sodas[item]
      else 
        return nil
    end
  end

  def sell(soda_brand)
  end

  def current_inventory_count
    # return the number of sodas it contains
  end

  def find_soda(brand)
    # find a single soda with a given brand
  end

  def sell(brand)
    # sell a soda with a given brand
    # should be removed from the soda machine 
    # the price of the soda should be added to the soda machine's cash
    if @sodas.include?(brand)
      item = @sodas.index(brand)
      @cash += @sodas[item][price]
      @sodas.delete(brand)
    end
  end

end


pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00) 
second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65) 

soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)


p soda_machine.current_inventory_count


