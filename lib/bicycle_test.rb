class BicycleTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  
  def setup
    @bicycle = @object = Bicycle.new
  end
end

class RoadBikeTest < MiniTest::Unit::TestCase
  include BicycleInterfaceTest
  
  def setup
    @roadbike = @object = RoadBike.new
  end
end