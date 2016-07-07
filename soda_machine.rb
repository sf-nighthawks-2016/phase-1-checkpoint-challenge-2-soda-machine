class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    self.sodas.count
  end

  def find_soda(soda_brand)
    self.sodas.find {|soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    return nil unless @sodas.find {|soda| soda.brand == soda_brand}
    
    @sodas.find do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
        @sodas.delete(soda)
      end
    end
  end

end
