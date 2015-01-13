require('rspec')
require('triangle')

describe(Triangle) do
  describe("#find_type") do
    it("determines if it is a triangle or not") do
      test_triangle = Triangle.new(1, 1, 3)
      expect(test_triangle.find_type()).to(eq("not a"))
    end
    it("if all sides are the same, return equilateral") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.find_type()).to(eq("an equilateral"))
    end

    it("if no sides are the same, return scalene") do
      test_triangle = Triangle.new(20.3, 25.3, 14.8)
      expect(test_triangle.find_type()).to(eq("a scalene"))
    end

    it("if only 2 sides are the same, return isosceles") do
      test_triangle = Triangle.new(2, 2, 3)
      expect(test_triangle.find_type()).to(eq("an isosceles"))
    end
  end
end
