class DiameterDouble
  def diameter
    10
  end
end

class GearTest < MiniTest::Unit::TestCase
  def test_calculates_gear_inches
    gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: DiameterDouble.new)
      
    assert_in_delta(47.27,
      gear.gear_inches,
      0.01)
  end

  def setup
    @observer = MiniTest::Mock.new
    @gear     = Gear.new(
      chainring: 52,
      cog: 11,
      observer: @observer)
  end
  
  def test_notifies_observer_when_cogs_change
    @observer.expect(:changed, true, [52, 27])
    @gear.set_cog(27)
    @observer.verify
  end
  
  def test_notifies_observer_when_chainring_change
    @observer.expect(:chenged, true,[42, 11])
    @gear.set_chainring(42)
    @observer.verify
  end
end