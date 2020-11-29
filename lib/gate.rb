class Gate
  attr_accessor :station

  def initialize(station)
    @station = station
  end

  def enter(ticket)
    ticket.stamped_at = @station
  end

end
