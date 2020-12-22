class Bicycle
  include Schedulable
  
  def lead_days
    1
  end
  
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @schedule  = args[:schedule] || Schedule.new
    @size      = args[:size]
    @chain     = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end
  
  
  def post_initialize(args)
    nil
  end
  
  def spares
    { tire_size: tire_size,
      chain: chain}.merge(local_spares)
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
