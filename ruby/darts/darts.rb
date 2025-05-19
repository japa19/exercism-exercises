class Darts

  def initialize(x, y)
    @distance = Math.sqrt(x**2 + (y**2))
  end

  def score

    if @distance <= 1
      return 10
    elsif @distance <= 5
      return 5
    elsif @distance <= 10 
      return 1
    else
      return 0
    end
  end
  
end
