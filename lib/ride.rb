class Ride
  attr_reader :start_x, :start_y, :end_x, :end_y, :start_time, :end_time, :distance

  def initialize(start_x, start_y, end_x, end_y, start_time, end_time)
    @start_x = start_x
    @start_y = start_y
    @end_x = end_x
    @end_y = end_y
    @start_time = start_time
    @end_time = end_time
    @distance = (start_x - end_x).abs + (start_y - end_y).abs
  end
end
