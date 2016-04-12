class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available!" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    #puts "DING"
    fail "The dock is full!" if @bikes.length >= 20
    @bikes << bike
  end
end

class Bike
  def working?
  end

  def docked?
  end
end

# require "./lib/docking_station.rb"
