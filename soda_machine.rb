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
    return sodas.find { |soda| soda.brand == soda.brand}
    else
        return nil if soda.brand == 'surge'
       soda.brand
  end

  def sell(soda_brand)
      if find_soda(soda_brand) != nil
         the_soda = @sodas.find {|soda| soda.brand == soda_brand}
         @cash += the_soda.price
         @sodas.delete(the_soda)
     end
  end
end
