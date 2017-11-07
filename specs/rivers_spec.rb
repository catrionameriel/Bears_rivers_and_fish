require("minitest/autorun")
require("minitest/rg")
require_relative("../rivers.rb")
require_relative("../fish.rb")

class TestRivers < MiniTest::Test

  def setup
    @fish1 = Fish.new("Bonnie")
    @fish2 = Fish.new("George")
    @fish = [@fish1, @fish2]
    @river = River.new("Clyde", @fish)
  end

  def test_river_has_name
    assert_equal("Clyde", @river.name)
  end

  def test_how_many_fish
    # @river.add_fish_to_river(@fish1)
    # @river.add_fish_to_river(@fish2)
    assert_equal(2, @river.fish.count)
  end

end
