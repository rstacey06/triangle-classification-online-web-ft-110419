class Triangle
  
  # class TriangleError < StandardError
  # end
  
  attr_reader :a, :b, :c
  
  def initialize (a, b, c)
    @a = a 
    @b = b 
    @c = c
  end
end
