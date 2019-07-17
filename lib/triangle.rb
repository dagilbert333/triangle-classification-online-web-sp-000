class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
        raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
        raise TriangleError
    else 
      if (@side1 == @side2) && (@side2 == @side3)
        :equilateral
      elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
        :isosceles
      elsif (@side1 != @side2) && (@side2 != @side3)
        :scalene
      end
    end
  end
  
  class TriangleError < StandardError
    
  end
  
end



