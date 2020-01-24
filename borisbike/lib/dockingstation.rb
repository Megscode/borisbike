require_relative 'bike'

class DockingStation

    attr_reader :bike, :available_bikes

    def initialize
      @available_bikes = 0
    end

    def release_bike
      if @available_bikes == 0
        raise "message"
      else 
        released = Bike.new 
        @available_bikes -= 1
        return released 
     end
    end

    def dock(bike)
      if @available_bikes == 1
        raise "full"
      else  
        @available_bikes += 1
        @bike = bike 
      end     
    end  



end