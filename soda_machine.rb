require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  # RETURNS current inventory count
  def current_inventory_count
    return @sodas.length
  end

  # finds a certain soda in the machine
  def find_soda(soda_brand)
    @sodas.each  do |soda|
      if soda == soda_brand
        return soda_brand
      else
        nil
      end
    end
  end

  def sell(soda_brand)
  end

end
