class Car
  attr_reader :x, :y, :rides
  
  def initialize
    @x = 0
    @y = 0
    @rides = []
    @total_time = 0
  end

  def time_for_ride(ride)
    min_time = nil
    (@rides.length + 1).times do |index| 
      all_rides = @rides.clone
      all_rides.insert(index, ride) 
      time = time_to_finish_all_rides(all_rides)
      
      if min_time.nil? || time < min_time
        min_time = time
        @min_bid = all_rides
      end
    end
    min_time 
  end

  def add_ride(ride)
    @rides = @min_bid
  end

  private

  def time_to_ride_complete(x, y, ride)
    (x - ride.start_x).abs + (y - ride.start_y).abs + ride.distance
  end

  def time_to_finish_all_rides(rides)
    total_time = 0
    x = 0
    y = 0
    rides.each do |ride|
      total_time += time_to_ride_complete(x, y, ride)
      x = ride.end_x
      y = ride.end_y
    end
    total_time
  end

end
