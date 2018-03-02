module Solver
  def self.solve(cars, rides)
    i = 0
    rides.each do |ride| 
      puts i
      i += 1
      max_score = sum_cars_except(cars, nil)
      max_car = nil

      cars.each do |car|
        score = car.score_with_ride(ride)
        score += sum_cars_except(cars, car)

        # puts score
        if max_score.nil? || score > max_score
          max_score = score
          max_car = car
        end
      end 
      max_car.add_ride(ride) unless max_car.nil?
    end
  end

  def self.sum_cars_except(cars, exception)
    score = 0
    cars.each do |car|
      score += car.score unless car == exception
    end
    score
  end

end
