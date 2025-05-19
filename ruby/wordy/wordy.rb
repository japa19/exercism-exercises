# frozen_string_literal: true

class WordProblem
  attr_reader :problem

  OPERATORS = {
    'plus' => :+,
    'minus' => :-,
    'multiplied' => :*,
    'divided' => :/
  }.freeze

  def initialize(problem)
    @problem = problem
  end

  def answer
    raise ArgumentError unless valid?

    @answer ||= numerals.reduce { |sum, num| sum.send(operators.shift, num) }
  end

  private

  def operators
    @operators ||= problem.scan(/\d+\s(\w+)/).flat_map { |(op)| OPERATORS[op] }.compact
  end

  def numerals
    @numerals ||= problem.scan(/([+-]?\d+)/).flatten.map(&:to_i)
  end

  def valid?
    @valid ||= numerals.length >= 2 && operators.length == numerals.length - 1
  end
end
