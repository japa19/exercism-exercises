# frozen_string_literal: true

class SumOfMultiples
  def initialize(*base_values)
    @base_values = base_values
  end

  def to(limit)
    set = []
    @base_values.each do |base|
      next if base.zero?

      i = 0
      while i * base < limit
        set << i * base
        i += 1
      end
    end
    set.uniq.sum
  end
end
