require_relative "soda"

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

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
  end

end

# drink = Soda.new(brand: 'Pepsi', price: 0.65)
# machine = SodaMachine.new(sodas: [drink], cash: 1.00)
# drink.sodas

