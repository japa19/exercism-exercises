module PerfectNumber
  
  def self.classify(n)
    raise RuntimeError if n < 0
    sum = aliquot_sum(n)
    if sum == n
      'perfect'
    elsif sum > n
      'abundant'
    else
      'deficient'
    end
  end

  def self.aliquot_sum(n)
    sum = 0
    (1..n/2).each do |i|
      sum += i if n % i == 0
    end
    sum
  end
end