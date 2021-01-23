require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require_relative './triangle.rb'
def triangle(a, b, c)
  puts "12333331299991\n12333331299991\n12333331299991\n12333331299991\n12333331299991\n12333331299991\n12333331299991\n12333331299991\n12333331299991\n"
 raise TriangleError if a <= 0 || b <= 0 || c <= 0 || major(a, b, c)
  if a == b && a == c then result= :equilateral elsif a != b && a != c && b != c then result = :scalene else result = :isosceles end
end

def major(a, b, c)
 if a > b && a > c && a >= (b+c) then return true elsif b > a && b > c && b >= (a+c) then return true elsif  c > a && c > b && c >= (a+b) then return true end
end
class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 1, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
end
