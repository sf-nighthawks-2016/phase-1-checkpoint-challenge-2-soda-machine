require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    # create an empty array to store new sodas
    @inventory = []
  end

  def current_inventory_count
    # if a new soda object is created
    if Soda.new
      # add it to the soda inventory
      @inventory << Soda.new
    end
    return @inventory
  end

  def find_soda(soda_brand)
    # if brand of soda if not available
    if @sodas.current_inventory_count == true
    # look at the sodas hash in the machine and find the array position of the brand
      i = 0
      until soda_brand == @sodas[i]
      i += 1
      end
      return @sodas[i]
    # else return that soda minus one
    else
      @sodas.brand -= 1
    end

  end

  def sell(soda_brand)
    # if soda is in inventory
    if find_soda == true
      # find the price
      self.cash
    end
    return self.cash
  end

end

machine1 = SodaMachine.new( {brand: 'Pepsi', price: 0.65})
pepsi = Soda.new({brand: 'Pepsi', price: 0.65})
mountain_dew = Soda.new({brand: 'Mountain Dew', price: 0.75})

p machine1.current_inventory_count
# p pepsi.current_inventory_count
p machine1.find_soda('Pepsi')