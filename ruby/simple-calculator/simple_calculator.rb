# frozen_string_literal: true

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError, 'Invalid argument' unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
    raise UnsupportedOperation, 'Unsupported operation' unless ALLOWED_OPERATIONS.include?(operation)

    begin
      case operation
      when '+'
        result = first_operand + second_operand
      when '*'
        result = first_operand * second_operand
      when '/'
        raise ZeroDivisionError if second_operand.zero?

        result = first_operand / second_operand
      end

      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError
      'Division by zero is not allowed.'
    end
  end
end
