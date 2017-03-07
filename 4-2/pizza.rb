class Pizza
  BAKING_TIME = 12 # minutes

  def initialize
    @baking_time  = 0
    @oven         = nil
  end

  def increase_baking_time
    @baking_time += 1
  end

  def done?
    @baking_time == BAKING_TIME
  end
end
