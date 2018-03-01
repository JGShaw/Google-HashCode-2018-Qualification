class Car
  attr_reader :x, :y, :rides
  
  def initialize
    @x = 0
    @y = 0
    @rides = []
    @total_time = 0
  end

  def time_for_ride(ride)
    total = @total_time + time_to_ride_complete(ride)
    return nil if total > ride.end_time
    total
  end

  def add_ride(ride)
    @x = ride.end_x
    @y = ride.end_y
    @total_time += time_to_ride_complete(ride) 
    @rides << ride
  end

  private

  def time_to_ride_start(ride)
    (@x - ride.start_x).abs + (@y - ride.start_y).abs
  end

  def time_to_ride_complete(ride)
   time_to_ride_start(ride) + ride.distance
  end

end
