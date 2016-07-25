require('minitest/autorun')
require('minitest/rg')
require_relative('../car.rb')
require_relative('../engine.rb')

class CarTest < Minitest::Test

  def setup()
    @standard = Engine.new(10, 5)
    @turbo = Engine.new(25, 10)
    @regular_car = Car.new(0, 100, @standard)
    @sports_car = Car.new(0, 100, @turbo)
  end

  def test_accelerate_regular_speed
    @regular_car.accelerate(2)
    assert_equal(20, @regular_car.speed)
  end

  def test_accelerate_regular_fuel
    @regular_car.accelerate(3)
    assert_equal(85, @regular_car.fuel)
  end

  def test_break_regular
    @regular_car.accelerate(2)
    @regular_car.break()
    assert_equal(10, @regular_car.speed)
  end

  def test_accelerate_sports_speed
    @sports_car.accelerate(2)
    assert_equal(50, @sports_car.speed)
  end

  def test_accelerate_sports_fuel
    @sports_car.accelerate(3)
    assert_equal(70, @sports_car.fuel)
  end

  def test_break_sports
    @sports_car.accelerate(4)
    @sports_car.break()
    assert_equal(90, @sports_car.speed)
  end

end