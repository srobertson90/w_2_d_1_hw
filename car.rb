class Car

  attr_reader(:speed, :fuel, :engine)

  def initialize(speed, fuel, engine)
    @speed = speed
    @fuel = fuel
    @engine = engine
  end

  def accelerate(unit)
    @speed += (@engine.speed_gain(unit))
    @fuel -= (@engine.fuel_use(unit))
  end

  def break()
    if @speed >= 10
      @speed -= 10 
    else
      @speed = 0
    end
  end

end
