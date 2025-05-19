# frozen_string_literal: true

module Blackjack
  def self.parse_card(card)
    value = {
      'ace' => 11,
      'eight' => 8,
      'two' => 2,
      'nine' => 9,
      'three' => 3,
      'ten' => 10,
      'four' => 4,
      'jack' => 10,
      'five' => 5,
      'queen' => 10,
      'six' => 6,
      'king' => 10,
      'seven' => 7
    }
    value.default = 0
    value[card]
  end

  def self.card_range(card1, card2)
    sum = parse_card(card1) + parse_card(card2)
    case sum
    when 4..11 then 'low'
    when 12..16 then 'mid'
    when 17..20 then 'high'
    when 21 then 'blackjack'
    else 'split'
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    case card_range(card1, card2)
    when 'split' then 'P'
    when 'low' then 'H'
    when 'mid'
      parse_card(dealer_card) >= 7 ? 'H' : 'S'
    when 'high' then 'S'
    when 'blackjack'
      parse_card(dealer_card) > 9 ? 'S' : 'W'
    end
  end
end
