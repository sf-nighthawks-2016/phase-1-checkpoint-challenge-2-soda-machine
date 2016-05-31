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
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
  end
  end

  def sell(soda_brand)
    if find_soda(soda_brand)
      i = 0
      @sodas.each do |soda|
        i+=1
        if soda.brand == soda_brand
          @sodas.delete_at(i)
        end
      end
    else
      nil
    end
  end

end

