require_relative 'oven'
require_relative 'pizza'

oven_1 = Oven.new
oven_2 = Oven.new

pizza_count = 0

loop do
  if pizza_count <= 30
    if oven_1.has_place_for_pizza? || oven_2.has_place_for_pizza?
      pizza = Pizza.new
      pizza_count +=1

      if oven_1.has_place_for_pizza?
        puts "adding pizza to oven 1"
        oven_1.add_pizza(pizza)
      else
        puts "adding pizza to oven 2"
        oven_2.add_pizza(pizza)
      end
    end
  end

  oven_1.increase_baking_time
  oven_2.increase_baking_time
  oven_1.remove_done_pizzas
  oven_2.remove_done_pizzas
  sleep 0.2

  break if oven_1.empty? && oven_2.empty?
end
