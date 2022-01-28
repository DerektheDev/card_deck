# require_relative 'card_deck/version'
class Card
  attr_reader :suit, :value, :name

  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end

  def name
    "#{@rank} of #{@suit}"
  end
end

class CardDeck
  attr_reader :cards, :compare

  def initialize
    @cards = build_deck
  end

  def build_deck
    self.class.suits.map do |suit|
      cards_per_suit = self.class.numerics + self.class.faces
      cards_per_suit.map do |card|
        Card.new(suit, card[:value], card[:rank])
      end
    end.flatten
  end

  def deal
    # deal a card from the top of the deck
    @cards.pop # or shift, to get from the other side
  end

  def return
    # return a card to the bottom of the deck
    card_to_return = @cards.pop
    @cards.unshift card_to_return
    card_to_return
  end

  def shuffle!
    # shuffle the cards
    @cards.shuffle!
  end

  class << self
    def suits
      %w[spades hearts diamonds clubs]
    end

    def faces
      %w[jack queen king ace].map.with_index do |rank, index|
        {
          value: index + 11,
          rank: rank,
        }
      end
    end

    def numerics
      [*2..10].map do |n|
        {
          value: n,
          rank: n
        }
      end
    end

    def compare first_card, second_card
      first_value, second_value = first_card.value, second_card.value
      
      comparison = case
      when first_value > second_value then "greater than"
      when first_value < second_value then "less than"
      else
        "equal to"
      end

      puts "#{first_card.name} is #{comparison} #{second_card.name}"
    end
  end
end

deck = CardDeck.new
deck.shuffle!
# pp deck.cards
puts '---'
deck.deal
deck.deal
puts '---'
deck.return
# pp deck.cards

card_1 = deck.cards.first
card_2 = deck.cards.last
pp card_1
pp card_2
CardDeck.compare card_1, card_2