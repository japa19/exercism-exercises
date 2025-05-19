# frozen_string_literal: true

class Triangle
  def initialize(sides)
    @a = sides[0]
    @b = sides[1]
    @c = sides[2]
  end

  def valid?
    @a + @b > @c && @a + @c > @b && @b + @c > @a && @a.positive? && @b.positive? && @c.positive?
  end

  def equilateral?
    valid? && @a == @b && @b == @c
  end

  def isosceles?
    valid? && (@a == @b || @a == @c || @b == @c)
  end

  def scalene?
    valid? && @a != @b && @a != @c && @b != @c
  end
end
