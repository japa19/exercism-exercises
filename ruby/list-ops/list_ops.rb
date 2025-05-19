# frozen_string_literal: true

class ListOps
  def initialize(l)
    @l = l
  end

  def self.arrays(l)
    c = 0
    l.each do |_e|
      c += 1
    end
    c
  end

  def self.sum_reducer(l)
    s = 0
    l.each do |e|
      s += e
    end
    s
  end

  def self.factorial_reducer(l)
    f = 1
    l.each do |e|
      f *= e
    end
    f
  end

  def self.concatter(a, b)
    b.each do |e|
      a.push(e)
    end
    a
  end

  def self.reverser(l)
    r = []
    l.each do |e|
      r.unshift(e)
    end
    r
  end

  def self.filterer(l, &block)
    f = []
    l.each do |e|
      f << e if block.call(e)
    end
    f
  end

  def self.mapper(l, &block)
    l.each_with_index do |e, i|
      l[i] = block.call(e)
    end
    l
  end
end
