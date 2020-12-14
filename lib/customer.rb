class Customer
  def suitable_trips(:on_date, :of_difficulty, :need_bike, :trip_finder)
    trip_finder.suitable_trips(:on_date, :of_difficulty, :need_bike)
  end
end
