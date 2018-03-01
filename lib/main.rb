require_relative 'car'
require_relative 'ride'
require_relative 'solver'

File.open(ARGV[0], "r") do |f|

    @numRows, @numCols, @numVehicles, @numRides, @startOnTimeBonus, @numSimSteps = f.first.split().map { |num| num.to_i  }

    rides = [] 

    ride_id = 0

    f.each do |line|
        startY, startX, endY, endX, earliestStartTime, latestFinishTime = line.split().map {|num| num.to_i}
        rides << Ride.new(ride_id, startX, startY, endX, endY, earliestStartTime, latestFinishTime)
        ride_id += 1
    end

    @cars = []
    
    for i in 0..(@numVehicles - 1)
        @cars << Car.new
    end

    Solver.solve(@cars, rides)

end

fileName = File.basename(ARGV[0], File.extname(ARGV[0]))

File.open("outputs/%s.out" % [fileName], 'w') { |file| 
    @cars.each do |car|
        output_line = car.rides.map{ |ride| ride.ride_id }.join(" ")
        file.puts output_line unless output_line.empty?
    end
}



    

