require_relative "card"

class Hand
  RANKINGS = {
    royal_flush: 100,
    straight_flush: 90,
    four_of_a_kind: 80, 
    full_house: 70, 
    flush: 60,
    straight: 50, 
    three_of_a_kind: 40,
    two_pairs: 30,
    pair: 20,
    high_card: 10
  }

  # This is a *factory method* that creates and returns a `Hand`
  # object.
  def self.deal_from(deck)
  end

  attr_accessor :hand

  def initialize(cards)
    @hand = cards
  end

  def points

  end

  def beats?(other_hand)
  end

  def return_cards(deck)
  end

  def to_s
    @cards.join(",") + " (#{points})"
  end

  def royal_flush?
    condition_1 = (hand.map{ |card| card.suit }.uniq.length == 1)
    hand_sum = hand.map{ |card| CARD_VALUE[card.value] }.sum
    condition_2 = (hand_sum == 60)
    condition_1 && condition_2
  end

  def check_hand
    
  end

end

ten = Card.new(:clubs, :ten)
jack = Card.new(:clubs, :jack)
queen = Card.new(:clubs, :queen)
king = Card.new(:clubs, :king)
ace = Card.new(:clubs, :ace)
p hand1 = Hand.new([ten, jack, queen, king, ace])
p hand1.royal_flush?
