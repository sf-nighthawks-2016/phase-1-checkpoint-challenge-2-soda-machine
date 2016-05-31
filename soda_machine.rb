class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    sodas.find { |soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    index = sodas.find_index { |soda| soda.brand == soda_brand}
    if index != nil
      @cash += sodas[index].price
      sodas.delete_at(index)
    end
  end

end
