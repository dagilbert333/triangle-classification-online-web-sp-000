class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    elsif @side2 == @side3 && @side2 != @side1
      :isosceles
    else (@side1 != @side2) && (@side2 != @side3)
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
