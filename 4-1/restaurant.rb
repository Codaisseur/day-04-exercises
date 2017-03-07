class Restaurant
  attr_accessor :name, :kitchen_size, :cooks

  def initialize(name, kitchen_size, cooks = [])
    @name = name
    @kitchen_size = kitchen_size
    @cooks = cooks
  end

  def print_cooks
    @cooks.each do |cook|
      puts "* #{cook.name}"

      if cook.chef?
        puts "this is our chef"
      end
    end
  end

  def add_cook(cook)
    return if @cooks.count >= @kitchen_size

    @cooks << cook
  end
end
