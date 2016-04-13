class DockingStation
  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(cap=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = cap
  end

  def release_bike
    fail "No bikes available!" if empty?
    fail "The bike at this dock is broken!" if @bikes.last.working? == false
    @bikes.pop
  end

  def dock(bike)
    raise "The dock is full!" if full?
    @bikes << bike 
  end

  private

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.length == 0
  end
end

class Bike
 attr_accessor :working

  def initialize
    @working = true
  end

  def report_broken
    @working = false
  end

  def working?
    @working
  end

  def docked?
  end
end

    #last_bike = @bikes.last
    #fail "The bike at this dock is broken!" if last_bike.working? == false

# require "./lib/docking_station.rb"
