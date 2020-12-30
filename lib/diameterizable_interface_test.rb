module DiameterizableInterfaceTest < MiniTest::Unit::TestCase
  def test_implements_the_diameterizable_interface
    assert_respond_to(@object, :width)
  end
end