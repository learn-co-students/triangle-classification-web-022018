class Triangle
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z
  end
  
  def kind
    raise TriangleError if (x == 0 || y == 0 || z == 0) || (x + y <= z || x + z <= y || y + z <= x)
    return :equilateral if x == y && x == z
    return :isosceles if (x == y && x != z) || (x == z && x != y) || (y == z && y != x)
    return :scalene if x != y && x != z && y != z
  end
end

class TriangleError < StandardError
  def message
    "This triangle does not work. You suck."
  end
end