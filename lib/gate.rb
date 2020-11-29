class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARE = [150, 190]
  attr_accessor :station

  def initialize(station)
    @station = station
  end

  def enter(ticket)
    ticket.stamped_at = @station
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station)
    distance = to - from
    FARE[distance - 1]
  end
end
