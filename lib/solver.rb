module Solver
  def self.solve(cars, rides)
    i = 0
    rides.each do |ride| 
      puts i
      i += 1
      min_time = nil
      min_car = nil

      cars.each do |car|
        time = car.time_for_ride(ride)
        if min_time.nil? || time < min_time
          min_time = time
          min_car = car
        end
      end
      
      min_car.add_ride(ride)
    end
  end
end
