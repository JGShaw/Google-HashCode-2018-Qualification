module Sorter
  def self.sortByStartTimeAsc(rides)
    rides.sort_by!{|ride| ride.start_time}
  end
  def self.sortByStartTimeDesc(rides)
    rides.sort_by{|ride| ride.start_time}.reverse!
  end
  def self.sortByRideDistanceAsc(rides)
    rides.sort_by!{|ride| ride.distance}
  end
  def self.sortByRideDistanceDesc(rides)
    rides.sort_by{|ride| ride.distance}.reverse!
  end
  def self.removeImpossibleJourneys(rides, numSimSteps)
    rides.reject!{|ride|  ride.distance + ride.start_time > numSimSteps }
  end
end
