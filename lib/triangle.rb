class Triangle
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind 
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      begin
        raise TriangleError
        puts error.message
      end
    elsif @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side3 + @side1 <= @side2
      begin
        raise TriangleError
        puts error.message
      end
    elsif (@side1 == @side2 && @side2 == @side3)
      :equilateral
    elsif (@side1 == @side2 || @side2 == @side3 || @side1 == @side3)
      :isosceles
    elsif @side1 != @side2 && @side2 != @side3
      :scalene
    end  
  end
  

  class TriangleError < StandardError
    def message
      'Invalid Triangle.'
    end
  end

end

# t1 = Triangle.new(0, 0, 0).kind
# puts t1