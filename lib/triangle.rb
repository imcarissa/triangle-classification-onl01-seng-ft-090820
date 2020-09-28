class Triangle
  
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def valid?
    if side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_3 + side_1 > side_2
      true 
    else 
      false 
    end
  end
  
  def kind
    if valid?
      if side_1 == side_2 && side_2 == side_3
        :equilateral
      elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
        :isosceles
      else
        :scalene
    end
    else
      raise TriangleError
    end
  end

class Triangle < StandardError
  def message
    "This is not a triangle."
  end
end