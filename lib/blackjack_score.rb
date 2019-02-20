# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack"]
FACECARDS = ["King", "Queen", "Jack"]

def blackjack_score(hand)
  hand.each do |card|
    unless VALID_CARDS.include?(card)
      raise ArgumentError, "Invalid card."
    end
    if FACECARDS.include?(card)
      card = 10
    end
    score += card
  end

  if hand < 2 || hand > 5
    raise ArgumentError, "Hand size must be between and including 2-5."
  end

  return score
end

# puts blackjack_score()

# hand = an array
