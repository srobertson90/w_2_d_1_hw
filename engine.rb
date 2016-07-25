class Engine

  attr_reader(:power, :consumption)

  def initialize (power, consumption)
    @power = power
    @consumption = consumption
  end

  def speed_gain(units)
    speed_gain = (@power*units)
    return speed_gain
  end

  def fuel_use(units)
    fuel_use = (@consumption*units)
    return fuel_use
  end

end