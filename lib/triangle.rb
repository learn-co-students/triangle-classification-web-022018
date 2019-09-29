require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :sides

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end

  def kind
    if side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2 || self.sides.any? {|side| side <= 0}
      raise TriangleError
    else
      tester = self.sides.uniq.count
      case tester
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
  def message
    "not a valid triangle!"
  end
end


equilateral = Triangle.new(60, 60, 60)
isosceles = Triangle.new(40, 40, 100)
scalene = Triangle.new(37, 100, 43)
derp = Triangle.new(0, 100, 80)
derp2 = Triangle.new(-1, -4, 180)
