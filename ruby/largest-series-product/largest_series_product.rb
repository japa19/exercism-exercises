class Series
  
  def initialize(number)
    raise ArgumentError if number.empty? || number.match?(/\D/)
    @number = number
  end

  def largest_product(span)
    raise ArgumentError if span <= 0 || span > @number.length
    @number.chars
           .each_cons(span)
           .map(&:join)
           .map { |e| e.chars.map(&:to_i).inject(:*) }
           .max
  end

end
