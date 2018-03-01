class Car
  attr_reader :x, :y, :rides
  
  def initialize
    @x = 0
    @y = 0
    @rides = []
    @total_time = 0
  end

  def time_for_ride(ride)
    @total_time + time_to_ride_complete(ride)
  end

  def add_ride(ride)
    @x = ride.end_x
    @y = ride.end_y
    @total_time += time_to_ride_complete(ride) 
    @rides << ride
  end

  private

  def time_to_ride_complete(ride)
    (@x - ride.start_x).abs + (@y - ride.start_y).abs + ride.distance
  end

end
