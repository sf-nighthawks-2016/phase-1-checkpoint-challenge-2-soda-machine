require_relative 'soda'
require 'pry'
# binding.pry

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
    if find_soda(soda_brand) != nil
      sell_soda = find_soda(soda_brand) ## how would I pry or irb this?
      @cash += 1 #sold_soda.price
      @sodas.delete(sold_soda)

      # @sodas.each do |soda|
      #   if soda.brand == soda_brand
      #     @sodas.delete(soda)
      #     @cash += 1
    else
      return nil
    end
  end

end

soda_machine = SodaMachine.new(sodas: ['pepsi', 'mountain_dew', 'coke_zero',' second_pepsi'], cash: 1.00) ## how come these don't reocgnize the variables from soda?
# p soda_machine.find_soda('Pepsi')