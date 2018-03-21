require 'pry'

class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
  	@s1, @s2, @s3 = s1, s2, s3
  	too_long = (s1 >= s2 + s3) || (s2 >= s1 + s3) || (s3 >= s1 +s2)
  	is_zero = (s1 <= 0) || (s2 <= 0) || (s3 <= 0)

  	if (too_long || is_zero)
  		raise TriangleError
  	end

  end

  def kind
  	equilateral = (s1 == s2) && (s2== s3)
  	isosceles = (s1 == s2) || (s1 == s3) || (s2 == s3)

  	return :equilateral if equilateral
  	return :isosceles if isosceles
  	:scalene
  end

end

class TriangleError < StandardError
	def error_message
		"This triangle is INVALID"
	end
end

# tri = Triangle.new(0, 0, 0).kind


# binding.pry

# puts "Arbitrary"