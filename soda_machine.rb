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
    sodas.find { |soda|
    soda.brand == soda_brand}

  end

  def sell(soda_brand)
    if soda_brand == find_soda(soda_brand)
    sodas.delete(soda_brand)
    @cash += soda.price
    end
  end
end

#Runner
# s1 = Soda.new(brand: 'pepsi', price: 0.65)
# s2 =  SodaMachine.new(sodas: ['pepsi', 'mountain_dew'], cash: 1.00)
# p s2.find_soda('pepsi')
