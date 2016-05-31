require_relative 'soda'
require 'pry-byebug'

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
    # p " *" * 90
    # p soda_brand
    # p " *" * 90

    # @sodas.find { |soda| soda.brand == soda_brand }

    # binding.pry

    @sodas.each do |soda|
      return soda if soda.brand == soda_brand
    end
    nil
  end

  def sell(soda_brand)

    # INPUT - a string representing the brand of soda we want to sell

    # OUTPUT - can be two things, it can be the actual return value of the method
    # as well as stuff which is modified by the method

    # - modify the cash value of the soda machine

    # SHIT I HAVE ACCESS TO
    # - 2 instance vars @cash && @sodas
    # - 2 methods find_soda && current_inventory_count

    # STEPS -
    # if the soda is available
    # - to determine avaliablity send soda_brand to the find_soda method
    # - this returns either a soda_OBJ or nil
    soda = find_soda(soda_brand)
    if soda
      # p " *" * 90
      # p @cash
      # p soda.price
      # p " *" * 90
      @cash += soda.price
    end

    # when the soda is avaliable our method call above hands us the soda obj so use it
    # take the price attribute from the soda obj and add it to the @cash var

    # add the price of the soda to the machine cash variable
    # else do nothing



  end

end
