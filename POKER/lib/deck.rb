require_relative 'card'

# Represents a deck of playing cards.
class Deck
  attr_reader :cards
  # Returns an array of all 52 playing cards.
  def self.all_cards
    cards = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards
  end

  def initialize(cards = Deck.all_cards)
    @cards = cards
  end

  # Returns the number of cards in the deck.
  def count
    cards.count
  end

  # Takes `n` cards from the top of the deck.
  def take(n)
    card = cards.shift(n)
  end

  # Shuffle deck
  def shuffle
    cards.shuffle!
  end
end

deck1 = Deck.new
p deck1.cards.map(&:to_s)
puts "_______________________________"
p deck1.shuffle.map(&:to_s)
puts "_______________________________"
p deck1.take(3).map(&:to_s)
puts "_______________________________"
p deck1.cards.map(&:to_s)
puts "_______________________________"
p deck1.cards[0]
