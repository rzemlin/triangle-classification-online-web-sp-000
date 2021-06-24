class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a= a
    @b= b
    @c= c
  end

  def kind
    triangle_type
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

    def triangle_type
      valid_triangle = [(a + b > c), (b + c > a), (a + c > b)]
      [a, b, c].each do |side| valid_triangle << false if side <= 0 
      raise TriangleError if valid_triangle.include?(false)
      end
    end

    class TriangleError < StandardError
    end
end