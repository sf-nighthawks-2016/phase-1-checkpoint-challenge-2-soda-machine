class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    if @sodas.include?(soda_brand)
      # find if soda_brand is included in the sodas array
      return
      #if include? == true, return first instance of soda where @brand = soda_brand
    else
      return nil
    end
  end

  def sell(soda_brand)
    price = soda_brand.price
    #set variable equal to the price, based on the soda brand arg
    @cash += price
    #add the given price to the current machines @cash
    @sodas.delete(find_soda(soda_brand))
    #removes the soda from the machine
  end
end

