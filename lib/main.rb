require_relative 'car'
require_relative 'ride'

File.open(ARGV[0], "r") do |f|

    @numRows, @numCols, @numVehicles, @numRides, @startOnTimeBonus, @numSimSteps = f.first.split().map { |num| num.to_i  }

    rides = [] 

    f.each do |line|
        startY, startX, endY, endX, earliestStartTime, latestFinishTime = line.split().map {|num| num.to_i}
        rides << Ride.new(startX, startY, endX, endY, earliestStartTime, latestFinishTime)
    end

    cars = []
    
    for i in 0..@numVehicles
        cars << Car.new
    end

end