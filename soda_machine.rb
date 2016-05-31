class SodaMachine
  require_relative "soda"
  attr_reader :sodas, :cash, :price, :inventory

  def initialize(args = {})
    @sodas = args[:sodas]
    @price = args[:price]
    @cash = args[:cash]
    # @cash = :price.reduce(:+) 
  end

  def current_inventory_count
    p soda_count = @sodas.count
    return soda_count
  end

  def find_soda(soda_brand)
    @sodas.map do |word|
      p word.split("_")
    end
    @sodas.include?(soda_brand) ? soda_brand : nil
  end

  def sell(soda_brand)
    # @inventory.delete!(soda_brand)
    # return @inventory
  end

end


erica = SodaMachine.new(sodas: ["pepsi", 'mountain_dew', 'coke_zero', 'second_pepsi'], cash: 1.00) 
p erica.find_soda("pepsi")