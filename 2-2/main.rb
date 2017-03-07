require_relative 'cook'

first_cook = Cook.new('Primus Cook')
first_cook.remove_default_secret
first_cook.print_details

second_cook = Cook.new('Secundo Cook')
second_cook.add_secret('Seafood is all the meat you need')
second_cook.add_secret('Vegetarian barbecue is pointless')
second_cook.remove_default_secret
second_cook.print_details

third_cook = Cook.new(
  'Peter P. Pendergrass',
  [
    "No dish is complete without sugar",
    "Parsley adds taste to anything"
  ]
)
third_cook.remove_default_secret
third_cook.print_details
