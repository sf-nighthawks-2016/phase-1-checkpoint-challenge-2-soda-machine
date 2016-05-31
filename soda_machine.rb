
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    #this needs to return
    #the number of sodas that it contains
    @sodas.count
  end

  def find_soda(soda_brand)
    #Be able to find single soda
    #with a given brand
    @sodas.find { |soda| soda.brand == soda_brand}

  end

  def sell(soda_brand)
    #When soda is sold it should be removed from soda
    #machine and the price of the soda should be added
    #to machine cash.
    return nil if @sodas.empty?
    @soda.delete

  end

end
