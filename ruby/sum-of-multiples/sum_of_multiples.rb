class SumOfMultiples
  
  def initialize(*base_values)
    @base_values = base_values
  end

  def to(limit)
    set = []
    @base_values.each do |base|
      next if base == 0
      i = 0
      while i * base < limit do
         set << i * base
         i += 1
      end
    end
    set.uniq.sum
  end

end
