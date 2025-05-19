# frozen_string_literal: true

class Series
  def initialize(slice_string)
    raise ArgumentError if slice_string.empty?

    @slice_string = slice_string
  end

  def slices(l)
    raise ArgumentError if l <= 0 || l > @slice_string.length

    @slice_string.chars.each_cons(l).map(&:join)
  end
end
