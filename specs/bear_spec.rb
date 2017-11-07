require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Baloo")
  end

  def test_bear_name
    assert_equal("Baloo", @bear.name)
  end




end
