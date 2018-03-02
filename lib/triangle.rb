class Triangle

  attr_accessor :kind

  def initialize(a, b, c)
    if (
      (a + b) <= c ||
      (b + c) <= a ||
      (a + c) <= b ||
      a <= 0 || b <= 0 || c <= 0 )
      raise TriangleError
    else
      ab = a == b
      bc = b == c
      ac = a == c
      if ab && bc
        @kind = :equilateral
      elsif ab || bc || ac
        @kind = :isosceles
      else
        @kind = :scalene
      end
    end

  end
end

class TriangleError < StandardError
end
