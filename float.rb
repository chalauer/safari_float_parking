class Float
  attr_accessor :animal, :vehicle, :color, :decoration

  def initialize(animal, vehicle, color, decoration)
    @animal
    @vehicle
    @color
    @decoration
  end
  
  def to_s
    "#{animal} #{vehicle} #{color} #{decoration}"
  end
end  
