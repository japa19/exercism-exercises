# frozen_string_literal: true

# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  OLD_AGE_PENSIONS = 60

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= OLD_AGE_PENSIONS ? 10 : 15
  end

  def watch_scary_movie?
    @age >= 18
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member ? '🍿' : (raise NotMovieClubMemberError)
  end
end
