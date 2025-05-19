class SpiralMatrix
  
  def initialize(s)
    @size = s
  end

  def matrix
    @m = Array.new(@size) { Array.new(@size) }
    left, right, top, bottom = 0, @size - 1, 0, @size - 1
    num = 1

    while left <= right && top <= bottom
      (left..right).each { |col| @m[top][col] = num; num += 1 }
      top += 1
      (top..bottom).each { |row| @m[row][right] = num; num += 1 }
      right -= 1
      (right).downto(left).each { |col| @m[bottom][col] = num; num += 1 } if top <= bottom
      bottom -= 1
      (bottom).downto(top).each { |row| @m[row][left] = num; num += 1 } if left <= right
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
