# frozen_string_literal: true

class SpiralMatrix
  def initialize(s)
    @size = s
  end

  def matrix
    @m = Array.new(@size) { Array.new(@size) }
    left = 0
    right = @size - 1
    top = 0
    bottom = @size - 1
    num = 1

    while left <= right && top <= bottom
      (left..right).each do |col|
        @m[top][col] = num
        num += 1
      end
      top += 1
      (top..bottom).each do |row|
        @m[row][right] = num
        num += 1
      end
      right -= 1
      if top <= bottom
        right.downto(left).each do |col|
          @m[bottom][col] = num
          num += 1
        end
      end
      bottom -= 1
      if left <= right
        bottom.downto(top).each do |row|
          @m[row][left] = num
          num += 1
        end
      end
      left += 1
    end
    @m
  end
  #     [1, 2, 3, 4],
  #     [12, 13, 14, 5],
  #     [11, 16, 15, 6],
  #     [10, 9, 8, 7]
  #     4 3 3 2 2 1 1
end
