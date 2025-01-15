class FloatV
  attr_accessor :animal, :vehicle, :color, :decoration

  def initialize(animal, vehicle, color, decoration)
    @animal = animal
    @vehicle = vehicle
    @color = color
    @decoration = decoration
  end
  
  def to_s
    "#{animal} #{vehicle} #{color} #{decoration}"
  end
end  
