require('minitest/autorun')
require('minitest/rg')
require_relative('../engine.rb')

class EngineTest < Minitest::Test

  def setup()
    @standard = Engine.new(10, 5)
    @turbo = Engine.new(25, 10)
  end

  def test_speed_gain()
    assert_equal(25, @turbo.speed_gain(1))
  end

  def test_fuel_use()
    assert_equal(5, @standard.fuel_use(1))
  end

end