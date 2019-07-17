class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    #creates an array of boolean values basedon the input values of a,b,c ; so that if any of those return false, the method will return false, if the array has a false value in it, then the raise Triangle Error runs
    #otherwise this returns true
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    #below tests to see if a,b or c is zero or negative
    #if any of them are zero or negative, then it adds a false value to the array, so that the Triangle Error will be raised
    [a, b, c].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end
  
end

class TriangleError < StandardError
end



