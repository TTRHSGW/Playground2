module BicycleInterfaceTest
  def test_responds_to_spares
    assert_respond_to(@object, :spares)
  end
end