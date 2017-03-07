require_relative 'cook'

peter = Cook.new(
  'Peter P. Pendergrass',
  [
    "No dish is complete without sugar",
    "Parsley adds taste to anything"
  ]
)

11.times { peter.make 'pineapple pistachio pie' }

peter.go_to_work

2.times { peter.make 'pulled pork' }

peter.print_details
