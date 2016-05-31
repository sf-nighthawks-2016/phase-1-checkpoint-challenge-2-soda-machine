require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
   # @new_soda = Soda.new
  end

  # RETURNS current inventory count
  def current_inventory_count
    return @sodas.length
  end

  # finds a certain soda in the machine
  def find_soda(soda_brand)

    sodas.find do |soda|
      soda.brand == soda_brand
    end

   # @sodas.each do |soda|
   #     return @soda
   #   else
   #    return nil
   #   end
   # end
  end

  def sell(soda_brand)
    i = @sodas.find_index do |soda|
      soda.brand == soda_brand}
    end

    if i != nil

    @cash += sodas[i].price
    sodas.delete_at(i)
  end
  end

end
