require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Bonnie")
    @fish2 = Fish.new("George")
  end

  def test_fish_name
    assert_equal("Bonnie", @fish1.name)
  end

  

end
