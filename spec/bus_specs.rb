require("minitest/autorun")
require_relative("../bus")

class TestBus < MiniTest::Test

def setup
  @bus = Bus.new(22, "Alien Bloc")
  @person = Person.new("Mike", 14)
end

def test_route_number
  assert_equal(22, @bus.route_number)
end

def test_destination
  assert_equal("Alien Bloc", @bus.destination)
end

def test_drive
  assert_equal("Brum Brum", @bus.drive)
end

def test_number_of_passengers
  assert_equal(0, @bus.number_of_passengers)
end

def test_pick_up
  @bus.pick_up(@person)
  assert_equal(1, @bus.number_of_passengers)
end

def test_drop_off
  @bus.drop_off("Mike")
  assert_equal(0, @bus.number_of_passengers)

end

def test_remove_all_passenger
  person_2 = Person.new("Rapahel", 28)
  @bus.pick_up(person_2)
  #we've got 2 people in the bus
  @bus.remove_all_passengers()
  assert_equal(0, @bus.number_of_passengers)
end
end
