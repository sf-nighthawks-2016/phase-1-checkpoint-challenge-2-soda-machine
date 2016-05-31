require_relative 'Soda'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
  args[:sodas].length
  end

  def find_soda(soda_brand)
    args[:sodas].include?(soda_brand)
    return soda_brand
  end

  def sell(soda_brand)
    args.delete(soda_brand)
    args[:cash] = args[:cash] + args[:price]

  end

end
