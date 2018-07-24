require 'pry'
class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle?
    if @a == @b && @b == @c
        :equilateral
    elsif @a == @b || @b == @c || @a == @c
        :isosceles
    elsif @a != @b && @b != @c && @a != @c
        :scalene
    end

  def valid_triangle?
      real_triangle = [(@a + @b > @c), (@b + @c > @a), (@a + @c > @b)]
      [a, b, c].each {|x| real_triangle << false if x <= 0}
      begin
        raise TriangleError
        puts error.message
      end
  end

    class TriangleError < StandardError
      def message
      puts "That is not a triangle."
      end
    end

end
