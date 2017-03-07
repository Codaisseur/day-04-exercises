require_relative 'cook'
require_relative 'restaurant'

first_cook =  Cook.new 'Primus'
second_cook = Cook.new 'Secundus'
third_cook =  Cook.new 'Tertius', ['Tamarin or tabasco will tickle the taste'], true

pizza_palace = Restaurant.new 'Pizza Palace', 4, [first_cook, second_cook, third_cook]

fourth_cook = Cook.new 'Quartus'
fifth_cook  = Cook.new 'Quintus'

pizza_palace.add_cook fourth_cook
pizza_palace.add_cook fifth_cook

pizza_palace.print_cooks
