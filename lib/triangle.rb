require 'pry'
class Triangle
  # write code here

  def initialize(a,b,c)
    if ((a+b>c) && (b+c>a) && (c+a>b)) && (a>0 && b>0 && c>0)
      @a = a
      @b = b
      @c = c
    else
      raise TriangleError
    end
  end

  def kind
    if (@a==@b)&&(@b==@c)
      :equilateral
    elsif (@a==@b)||(@b==@c)||(@c==@a)
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError

end
