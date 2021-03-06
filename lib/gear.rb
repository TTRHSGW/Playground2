
class Gear
  attr_reader :chainring, :cog, :wheel, :observer
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
    @observer  = observer
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches(diameter)
    ratio * diameter
  end
  
  def set_cog(cog)
    @cog = cog
    changed
  end
  
  def set_chainring(chainring)
    @chainring = chainring
    changed
  end
  
  def change
    observer.changed(chainring, cog)
  end
  
end

class Wheel
  attr_reader :rim, :tire, :gear
  def initialize(rim, tire, chainring, cog)
    @rim  = rim
    @tire = tire
    @gear = Gear.new(chainring, cog)
  end

  def gear_inches
    gear.gear_inches(diameter)
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end
