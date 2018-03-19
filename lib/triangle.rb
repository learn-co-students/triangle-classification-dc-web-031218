require 'pry'

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3, :type
  def initialize(side1, side2, side3)
    # binding.pry
    if side1 <= 0 || side2 <= 0 || side3 <= 0 ||
      (side1 + side2 <= side3 || side3 + side2 <= side1 || side1 + side3 <= side2)
      # binding.pry
        raise TriangleError
    end

      @side1 = side1
      @side2 = side2
      @side3 = side3
      @type = ''
  end

  def kind
    # binding.pry
    if self.side1 == self.side2 && self.side2 == self.side3
      :equilateral
    elsif self.side1 == self.side2 || self.side3 == self.side2 || self.side1 == self.side3
      :isosceles
    else
      :scalene
    end
  end


end

class TriangleError < StandardError
  def message
    "Not a real triangle"
  end
end
