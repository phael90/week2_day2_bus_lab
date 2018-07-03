require("minitest/autorun")
require_relative("../person")

class TestPerson < MiniTest::Test

  def setup
    @person  = Person.new("Raphael", 28)
  end

  def test_name
    assert_equal("Raphael", @person.name)
  end

  def test_age
    assert_equal(28, @person.age)
  end



end
