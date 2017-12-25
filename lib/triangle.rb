require "pry"

class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      raise TriangleError
    end
    if (@side_1 + @side_2 <= @side_3) || (@side_3 + @side_1 <= @side_2) || (@side_2 + @side_3 <= @side_1)
      raise TriangleError
    end
    return :equilateral if [@side_1, @side_2, @side_3].uniq.count <= 1
    return :isosceles if [@side_1, @side_2, @side_3].uniq.count <= 2
    return :scalene if [@side_1, @side_2, @side_3].uniq.count == 3

  end
end

class TriangleError < StandardError

end
