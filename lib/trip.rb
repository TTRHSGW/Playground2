class Trip
  attr_reader :bicycles, :customers, :vehicle

  def prepare(preparers)
    preparers.each {|preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        prepare.buy_food(customers)
      when Driver
        prepare.gas_up(vehicle)
        prepare.fill_water_tank(vehicle)
      end
    }
    #preparers.each {|preparer| preparer.prepare_trip(self)}
  end
end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customer)
  end

  def buy_food
  end
end

class Driver
  def prepare_trip(trip)

  end
end
