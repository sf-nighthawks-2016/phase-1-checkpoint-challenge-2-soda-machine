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
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    sold = @sodas.find { |soda| soda.brand == soda_brand }
    return nil if sold == nil
    @cash += sold.price
    @sodas.delete(sold)
  end

end
