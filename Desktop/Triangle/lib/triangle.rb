class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:find_type) do
    sides = [@a, @b, @c].sort()
    longest_side = sides.pop().to_i()
    side1 = sides.pop().to_i()
    side2 = sides.pop().to_i()
    if longest_side.<(side1.+(side2))
      triangle_type = "a scalene"
      if @a == @b && @a == @c
        triangle_type = "an equilateral"
      elsif @a == @b || @a == @c || @b == @c
        triangle_type = "an isosceles"
      end
    else
      triangle_type = "not a"
    end
    triangle_type
  end
end
