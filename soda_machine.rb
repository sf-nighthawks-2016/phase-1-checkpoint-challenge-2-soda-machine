# class Soda
#   # attr_accessor :brand

#   def initialize(args = {})
#     @brand = "Coca-cola"
#   end

#   def do_stuff
#     # p @brand
#     @brand = "Pepsi"
#     @thing = Thing.new(thing_data: @brand)
#   end


# end

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    # @sodas = []
    @sodas = args.fetch(:sodas, [])
    @cash = args[:cash]
    # @sodas = stock_machine
  end

  # def stock_machine
  #   Parser.import_sodas
  # end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    # sold = @sodas.find { |soda| soda.brand == soda_brand }
    sold = find_soda(soda_brand)
    # return nil if sold == nil
    return nil if sold.nil?
    @cash += sold.price
    @sodas.delete(sold)
  end

end

 # p sada = SodaMachine.new(sodas: [Soda.new()], cash: 1.0)

 # p " * " * 30
 # p sada.sodas.first.brand = "Dr Pepper"
