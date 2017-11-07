class River

  attr_reader :name
  attr_accessor :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish_to_river(fish)
    @fish << fish
  end

end
