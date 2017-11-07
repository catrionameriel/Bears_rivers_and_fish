require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../rivers.rb")

class TestBear < MiniTest::Test

  def setup
    @river = River.new("Clyde")
    @bear = Bear.new("Baloo")
  end

  def test_bear_name
    assert_equal("Baloo", @bear.name)
  end

  def test_stomach_contents__empty
    assert_equal(0, @bear.stomach_contents.count)
  end

  def test_stomach_contents__not_empty
    @bear.bear_eats_fish(@fish1)
    @bear.bear_eats_fish(@fish2)
    assert_equal(2, @bear.stomach_contents.count)
  end

end
