class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    args       = defaults.merge(args)
    @chainring = args[:chainring]
    @cog       = args[:cog]
    @wheel     = args[:wheel]
  end

  def defaults
    {:chainring => 40, :cog => 30}
  end

  def ratio
    chainring / cog.to_f
  end

  def diameter
    wheel.diameter
  end

  def gear_inches
    ratio * diameter
  end

end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim  = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end
