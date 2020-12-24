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
  end
  
  def spares
    parts.spares
  end
end
