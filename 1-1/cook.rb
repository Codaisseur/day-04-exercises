class Cook
  attr_accessor :name, :secrets

  def initialize(name, secrets)
    @name = name
    @secrets = secrets
  end

  def print_details
    puts @name
  end
end

peter = Cook.new(
  'Peter P. Pendergrass',
  [
    "No dish is complete without sugar",
    "Parsley adds taste to anything"
  ]
)

patricia = Cook.new('Patricia Klassen', [ "Cream makes everything better" ])
pamela = Cook.new('Pamela M. Fiscus', [ "Heat your food as little as possible" ])
jerry = Cook.new('Jerry Parker',
  [
    "Add Cocoa for more bite",
    "Lemon makes each taste stand out"
  ]
)

peter.print_details
patricia.print_details
pamela.print_details
jerry.print_details
