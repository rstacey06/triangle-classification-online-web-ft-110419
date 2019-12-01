class Triangle
  
  class TriangleError < StandardError
  end
  
  attr_reader :a, :b, :c
  
  def initialize (a, b, c)
    @a = a 
    @b = b 
    @c = c
  end
  
  def kind 
    triangle
    if a == b && b ==c 
      :equilateral
      elsif a == b || b == c || a == c 
      :isosceles
      else 
      :scalene 
    end
  end
  
  def triangle
    triangle_side = [(a + b > c), (b = c > a), (a + c > b)]
    [a, b, c].each {|s| triangle_side << false if s <= 0}
    raise TriangleError if triangle_side.include?(false)
  end
end
