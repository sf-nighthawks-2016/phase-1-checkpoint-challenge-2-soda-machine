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
    @sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    return nil if @sodas.empty?
    soda = find_soda(soda_brand)
    @sodas.delete(soda) && @cash += soda.price if soda
  end
end
