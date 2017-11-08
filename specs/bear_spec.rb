require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../rivers.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test

  def setup
    @fish1 = Fish.new("Bonnie")
    @fish2 = Fish.new("George")
    @fish = [@fish1, @fish2]
    @river = River.new("Clyde", @fish)
    @bear = Bear.new("Baloo", "RAAAAR!")
  end

  def test_bear_name
    assert_equal("Baloo", @bear.name)
  end

  def test_stomach_contents__empty
    assert_equal(0, @bear.stomach_contents.count)
  end

  def test_stomach_contents__not_empty
    @bear.bear_eats_fish(@fish1)
    assert_equal(1, @bear.stomach_contents.count)
  end

  def test_bear_roar
    assert_equal("RAAAAR!", @bear.roar)
  end

  def test_food_count__empty
    assert_equal(0, @bear.food_count)
  end

  def test_food_count__not_empty
    @river.fish_taken_from_river
    @bear.bear_eats_fish(@river.fish[0])
    assert_equal(1, @bear.food_count)
    assert_equal(1, @river.fish_count)
  end

end
