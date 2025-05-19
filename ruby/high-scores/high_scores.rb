# frozen_string_literal: true

class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse.first(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end

scores = [30, 50, 20, 70]
p HighScores.new(scores).scores
p HighScores.new(scores).latest
p HighScores.new(scores).personal_best
p HighScores.new(scores).personal_top_three
