class Tournament
  HEADER = "Team                           | MP |  W |  D |  L |  P".freeze

  def self.tally(input)
    teams = Hash.new { |hash, key| hash[key] = { mp: 0, w: 0, d: 0, l: 0, p: 0 } }

    input.each_line do |line|
      team1, team2, result = line.strip.split(";")
      next unless team1 && team2 && result

      case result
      when "win"
        update_stats(teams, team1, :win)
        update_stats(teams, team2, :loss)
      when "loss"
        update_stats(teams, team1, :loss)
        update_stats(teams, team2, :win)
      when "draw"
        update_stats(teams, team1, :draw)
        update_stats(teams, team2, :draw)
      end
    end

    format_table(teams)
  end

  def self.update_stats(teams, team, result)
    teams[team][:mp] += 1
    case result
    when :win
      teams[team][:w] += 1
      teams[team][:p] += 3
    when :draw
      teams[team][:d] += 1
      teams[team][:p] += 1
    when :loss
      teams[team][:l] += 1
    end
  end

  def self.format_table(teams)
    sorted_teams = teams.sort_by { |name, stats| [-stats[:p], name] }
    rows = sorted_teams.map do |name, stats|
      format("%-31s|  %d |  %d |  %d |  %d |  %d", name, stats[:mp], stats[:w], stats[:d], stats[:l], stats[:p])
    end
    ([HEADER] + rows).join("\n")
  end
end