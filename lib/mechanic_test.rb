class MechanicTest < MiniTest::Unit::TestCase
  include PrepareInterfaceTest
  
  def setup
    @mechanic = @object = Mechanic.new
  end
end