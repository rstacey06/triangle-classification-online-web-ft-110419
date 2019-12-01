class Triangle
  
  class TriangleError < StandardError
  end
  
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize (size)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end
end
