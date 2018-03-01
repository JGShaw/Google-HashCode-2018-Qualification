module Solver
  def self.solve(cars, rides)
    rides.each do |ride| 
      min_time = nil
      min_car = nil

      cars.each do |car|
        time = car.time_for_ride(ride)
        if !time.nil? && (min_time.nil? || time < min_time) 
          min_time = time
          min_car = car
        end
      end 
      min_car.add_ride(ride) unless min_car.nil?
    end
  end
end
