class Parts
  attr_reader :tire_size, :chain

  def initialize(args={})
    @tire_size = args[:tire_size] || default_tire_size
    @chain     = args[:chain]     || default_chain
  end

  def spares
    { tire_size: tire_size,
      chain: chain}.merge(local_spares)
  end

  def post_initialize(args)
    nil
  end
  
  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError,
      "This #{self.class} cannot respond to:"
  end
end