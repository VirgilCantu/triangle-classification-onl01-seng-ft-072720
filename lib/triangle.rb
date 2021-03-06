require 'pry'

class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  class TriangleError < StandardError
    def message
      "This is an illegal triangle."
    end
  end

  def kind
  
    if self.s1 < self.s2 + self.s3 == false || self.s2 < self.s1 + self.s3 == false || self.s3 < self.s1 + self.s2 == false
      raise TriangleError
    else
      if self.s1 == self.s2 && self.s2 == self.s3 && self.s1 == self.s3
        :equilateral
      elsif self.s1 == self.s2 || self.s2 == self.s3 || self.s1 == self.s3
        :isosceles
      elsif self.s1 != self.s2 && self.s2 != self.s3 && self.s1 != self.s3
        :scalene
      end
    end
  end
  
end



