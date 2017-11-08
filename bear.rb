class Bear

  attr_reader :name, :stomach_contents, :roar

  def initialize(name, roar)
    @name = name
    @stomach_contents = []
    @roar = roar
  end

  def bear_eats_fish(fish_in_river)
    @stomach_contents << fish_in_river
  end

  def food_count
    @stomach_contents.count
  end



end
