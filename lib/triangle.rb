require "pry"

class Triangle
 attr_reader :kind,:args

 def initialize(*args)
   @args = args

   if invalid?
     begin
       raise TriangleError
     end
    elsif args.uniq.length == 1
      @kind = :equilateral
    elsif args.uniq.length == 2
      @kind = :isosceles
    elsif args.uniq.length == 3
      @kind = :scalene
    end

  end
end

def invalid?
  args.include?(0) || args.sort[0] + args.sort[1] <= args.sort[2]
end


class TriangleError < StandardError
    # def message
    #   "not a triangle"
    # end
end
