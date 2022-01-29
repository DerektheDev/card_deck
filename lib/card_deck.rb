# require_relative 'card_deck/version'
require_relative 'card'

class CardDeck
  attr_reader :cards

  def initialize
    @cards = build_deck
  end

  def build_deck
    self.class.suits.map do |suit|
      [*2..14].map do |value|
        Card.new(value, suit)
      end
    end.flatten
  end

  def deal!
    # deal a card from the top of the deck
    @cards.shift # or pop, to get from the other side
  end

  def return! card
    # return a card to the bottom of the deck
    # inverst of push/shift is pop/unshift
    # card_to_return = @cards.shift
    @cards.push card
  end

  def shuffle!
    # shuffle the cards
    @cards.shuffle!
  end

  class << self
    def suits
      %w[spades hearts diamonds clubs]
    end

    def compare first_card, second_card
      first_value, second_value = first_card.value, second_card.value
      
      comparison = case
      when first_value > second_value then "greater than"
      when first_value < second_value then "less than"
      else
        "equal to"
      end

      "#{first_card.name} is #{comparison} #{second_card.name}"
    end
  end
end

# deck = CardDeck.new
# deck.shuffle!
# # pp deck.cards
# # puts '---'
# deck.deal!
# deck.deal!
# # puts '---'
# deck.return!
# # pp deck.cards
# card_1 = deck.cards.first
# card_2 = deck.cards.last
# pp card_1, card_2
# puts CardDeck.compare card_1, card_2