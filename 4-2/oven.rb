class Oven
  attr_accessor :pizzas
  MAX_PIZZAS = 3

  def initialize
    @pizzas = []
  end

  def has_place_for_pizza?
    @pizzas.size < MAX_PIZZAS
  end

  def add_pizza(pizza)
    return unless has_place_for_pizza?

    @pizzas << pizza
  end

  def increase_baking_time
    return if empty?

    @pizzas.each{ |pizza| pizza.increase_baking_time }
    print '.'
  end

  def empty?
    @pizzas.count == 0
  end

  def remove_done_pizzas
    @pizzas.each_with_index do |pizza, index|
      if pizza.done?
        puts "This pizza is done baking. Enjoy your meal" if pizza.done?
        @pizzas.delete_at(index)
      end
    end
  end
end
