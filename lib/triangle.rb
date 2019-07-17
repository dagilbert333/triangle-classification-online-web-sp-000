class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
      begin 
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      begin 
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
      end
    if (@side1 == @side2) && (@side2 == @side3)
      :equilateral
    elsif (@side1 == @side2) || (@side2 == @side3) || (@side1 == @side3)
      :isosceles
    elsif (@side1 != @side2) && (@side2 != @side3)
      :scalene
    else 
      
    end
  end
  
  class TriangleError < StandardError
    def message 
      "You must provide the proper triangle dimensions."
    end
  end
  
end



