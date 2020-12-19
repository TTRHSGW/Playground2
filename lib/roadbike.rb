class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(args)
    @tape_color  = args[:size]
    super(args)
  end

  def spares
    if style == :road
      { chain: '10-speed',
        tire_size: '23',
        tape_color: tape_color }
    else
      { chain: '10-speed',
        tire_size: '2.1',
        rear_shock: rear_shock }
    end
  end
end
