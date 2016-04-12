class DockingStation
  attr_reader :bike

  def release_bike
    fail "No bikes available!" unless @bike
    @bike
  end

  def dock(bike)
    fail "The dock is full!" if @bike
    @bike = bike
  end
end

class Bike
  def working?
  end

  def docked?
  end
end

# require "./lib/docking_station.rb"
