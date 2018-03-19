require 'pry'


class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    if(@side1 <= 0 || @side2 <= 0 || @side3 <= 0)
      false
    elsif (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side3 + @side2 <= @side1)
      false
    else
      true
    end
  end

  def kind
    #binding.pry
    if !self.valid? #may not need self
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif (@side1 == @side2 && @side2 != @side3) || (@side1 == @side3 && @side2 != @side3) || (@side3 == @side2 && @side2 != @side1)
      #binding.pry
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
 # triangle error code
end
