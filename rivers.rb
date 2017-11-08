class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  # def add_fish_to_river(fish)
  #   @fish << fish
  # end

  def fish_taken_from_river
    @fish.pop
  end

  def fish_count
    @fish.count
  end

end
