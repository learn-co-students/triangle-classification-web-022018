class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    valid?
    if a==b && b==c
      :equilateral
    elsif a==b || b==c || a==c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    legal = [(a + b > c), (a + c > b), (b + c > a)]
    [a,b,c].each do |side|
      legal
    end
    raise TriangleError if legal.include?(false)
  end
end

class TriangleError < StandardError
end
