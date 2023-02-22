class Triangle
  class TriangleError < StandardError
  end 
  attr_accessor :side1, :side2, :side3 
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3 
  end 
  def kind 
    if (side1 = 0 or side2 = 0 or side3 = 0)
    begin
      raise TriangleError
    end
    elsif (side1 === side2 && side2 === side3 && side1 === side3) 
      :equilateral
    elsif (side1 === side2 or side2 === side3 or side1 === side3)
      :isosceles
    elsif (side1 != side2 && side1 != side2 && side1 != side3)
      :scalene
    elsif (side1 + side2 <= side3 or side1 + side3 <= side2 or side2 + side3 <= side1)
      begin
        raise TriangleError
      end
      
    end 
   end 
end
