class Bear

  attr_reader :name, :stomach_contents

  def initialize(name)
    @name = name
    @stomach_contents = []
  end

  def bear_eats_fish(fish)
    @stomach_contents << fish
  end
end
