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
    if calc_fare(ticket)
      fare = calc_fare(ticket)
      fare <= ticket.fare
    else
      false
    end
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station)
    if from.nil?
      false
    else
      distance = to - from
      FARE[distance - 1]
    end
  end
end
