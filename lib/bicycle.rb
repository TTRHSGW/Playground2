class Bicycle
  attr_reader :size

  def initialize(args={})
    @size = args[:size]
  end
end
