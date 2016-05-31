require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :inventory

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @inventory = []
  end

  def current_inventory_count
    @inventory << Soda.new
  end

  def find_soda(soda_brand)
    if @inventory.include?(soda_brand)
      true
    return soda_brand
    end
  end

  def sell(soda_brand)
  end

end

p Soda.new(brand: 'Pepsi', price: 0.65)
p current_inventory_count
