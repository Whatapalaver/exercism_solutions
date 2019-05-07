class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.pop
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    reverse = @scores.sort.reverse
    reverse[0, 3]
  end
end
