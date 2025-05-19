# frozen_string_literal: true

module PerfectNumber
  def self.classify(n)
    raise RuntimeError if n.negative?

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
    (1..n / 2).each do |i|
      sum += i if (n % i).zero?
    end
    sum
  end
end
