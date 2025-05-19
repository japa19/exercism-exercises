# frozen_string_literal: true

class Matrix
  def initialize(m)
    @matrix = m.split("\n").map { |line| line.split.map(&:to_i) }
  end

  def row(r)
    @matrix[r - 1]
  end

  def column(c)
    @matrix.map { |r| r[c - 1] }
  end
end
