require_relative("person")

class Bus
  attr_reader :route_number, :destination
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []

  end

  def drive
    return "Brum Brum"
  end

  def number_of_passengers
    return @passengers.count
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(passenger_name)
    for passenger in @passengers
       if (passenger.name = passenger_name)
        @passengers.delete(passenger)
        break
      end
    end
  end

  def remove_all_passengers
    @passengers.clear
  end

end
