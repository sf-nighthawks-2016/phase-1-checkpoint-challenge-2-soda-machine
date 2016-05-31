 require_relative 'soda'

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
    @sodas.find { |soda| soda.brand == soda_brand ? soda : nil}
  end

  def sell(soda_brand)
    if find_soda(soda_brand) != nil
      @sodas.each do |soda|
        if soda.brand == soda_brand
          @sodas.delete(soda)
          @cash += 1 
        end
      end
    end
    nil
  end

end
