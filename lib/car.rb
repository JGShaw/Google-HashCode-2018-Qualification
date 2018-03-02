class Car
  attr_reader :x, :y, :rides, :score
  
  def initialize(bonus)
    @x = 0
    @y = 0
    @rides = []
    @score = 0
    @time = 0
    @bonus = bonus
  end

  def score_with_ride(ride)
    score = @score
    time = @time
    time += (@x - ride.start_x).abs + (@y - ride.start_y).abs
    wait_time = ride.start_time - time
    time += wait_time if wait_time > 0
    score += @bonus if time == ride.start_time
    time += ride.distance
    score += ride.distance if time <= ride.end_time
    score
  end

  def add_ride(ride)
    @rides << ride
    @time += (@x - ride.start_x).abs + (@y - ride.start_y).abs
    wait_time = ride.start_time - @time
    @time += wait_time if wait_time > 0
    @score += @bonus if @time == ride.start_time
    @time += ride.distance
    @score += ride.distance if (@time <= ride.end_time) 
    @x = ride.end_x
    @y = ride.end_y
  end
end
