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

  def find_soda(soda_brand)
    @sodas.each do |soda, price|
      if @sodas == soda_brand
        return nil
      elsif @sodas == 0
        return nil
      else
        return soda
    end
  end

  def sell(soda_brand)
    if soda_brand <= 0
      return true
    else
      return soda_brand
    end
  end

end
end
