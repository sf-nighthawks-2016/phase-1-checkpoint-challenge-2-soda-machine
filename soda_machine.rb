require_relative 'soda'

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
    if sodas.brand.include?(soda_brand)
      index = sodas.find_index(soda_brand)
      soda = sodas.fetch(index)
      return soda
    else
      return nil
    end
  end

  def sell(soda_brand)
    if sodas.include?(soda_brand) == false
      return nil
    end

  end
end

# Biggest struggle is reading and interpreting the rpec tests.
# If i was to build the class it would flow clearly but working backwards struggle
# need help with rspec

