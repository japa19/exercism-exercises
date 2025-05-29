require 'date'

class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, week)
    date = Date.new(@year, @month, starting_day_for(week))
    date += 1 until date.send("#{weekday}?")
    date
  end

  private

  def starting_day_for(week)
    week_starts = {
      first: 1,
      second: 8,
      third: 15,
      fourth: 22,
      fifth: 29,
      teenth: 13,
      last: -7
    }
    week_starts.fetch(week) { raise ArgumentError, "Unsupported week: #{week}" }
  end
end

Meetup.new(4, 2013).day(:sunday, :last)