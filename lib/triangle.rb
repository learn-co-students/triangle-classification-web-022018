require "pry"
class Triangle

  attr_reader :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
    @sides= [@one, @two, @three]
  end

  def kind
    if (@sides.sort.last >= @sides.sort[0] + @sides.sort[1])
      raise TriangleError
    elsif @one == @two && @two == @three
      return :equilateral
    elsif @sides.uniq == @sides
      return :scalene
    else
      return :isosceles
    end
  end

end

class TriangleError < StandardError

end
