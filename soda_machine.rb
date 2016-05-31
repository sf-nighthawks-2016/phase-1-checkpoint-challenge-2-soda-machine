class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    arr = []
    @sodas.each do |key, value|
      arr << key
    end
    if arr.length > 0
      return arr.length
    else 
      return 0
    end
  end

  def find_soda(soda_brand)

    if current_inventory_count > 0
       if soda_brand == "Pepsi"
         return @sodas[0]
         @sodas = @sodas - [@sodas[0]]
       elsif soda_brand == "Mountain Dew"
        return @sodas[1]
         @sodas = @sodas - [@sodas[1]]
       elsif soda_brand == "Coke Zero"
        return @sodas[2]
         @sodas = @sodas - [@sodas[2]]
       elsif soda_brand == "Mountain Dew"
        return @sodas[1]
         @sodas = @sodas - [@sodas[1]]
       else
        return nil
       end
    else 
     return "no sodas left"
    end
  end

 

  def sell(soda_brand)
  end

end
