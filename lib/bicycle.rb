class Bicycle
  include Schedulable
  
  def lead_days
    1
  end
  
  attr_reader :size, :parts

  def initialize(args={})
    @schedule  = args[:schedule] || Schedule.new
    @size      = args[:size]
    @parts     = args[:parts]
    post_initialize(args)
  end
  
  def post_initialize(args)
    nil
  end
  
  def spares
    parts.spares
  end
end
