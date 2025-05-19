# frozen_string_literal: true

module BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if input_base <= 1 || output_base <= 1 || digits.any? { |e| e.negative? || e >= input_base }

    decimal = digits.reduce(0) { |acc, d| acc * input_base + d }
    return [0] if decimal.zero?

    result = []
    while decimal.positive?
      result.unshift(decimal % output_base)
      decimal /= output_base
    end
    result
  end
end
