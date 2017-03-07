require_relative 'cook'

peter = Cook.new(
  'Peter P. Pendergrass',
  [
    "No dish is complete without sugar",
    "Parsley adds taste to anything"
  ]
)

['pancake', 'pasta', 'pizza', 'pumpkin soup'].each do |meal|
  peter.make meal
end

peter.print_details
