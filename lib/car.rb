class Car
  attr_reader :x, :y, :rides
  
  def initialize
    @x = 0
    @y = 0
    @rides = []
  end

  def time_for_ride(ride)
    @rides.length + 1
  end

  def add_ride(ride)
    @rides << ride
  end
end
