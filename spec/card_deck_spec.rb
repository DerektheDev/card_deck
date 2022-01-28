RSpec.describe CardDeck do
  before(:each) do
    @deck = CardDeck.new
  end

  it "builds a standard deck of cards" do
    expect(@deck.cards.length).to eq 52
  end

  it "deals a card from the top of the deck, mutating the instance each time" do
    two_of_spades = @deck.cards.first
    dealt_card = @deck.deal!
    expect(dealt_card.value).to eq 2
    expect(dealt_card).to eq two_of_spades
    
    three_of_spades = @deck.cards.first
    dealt_card = @deck.deal!
    expect(dealt_card.value).to eq 3
    expect(dealt_card).to eq three_of_spades
  end

  it "returns a card to the bottom of the deck" do
    two_of_spades = @deck.cards.first
    @deck.return!
    last_card = @deck.cards.last
    expect(last_card).to eq two_of_spades
  end

  it "can shuffle the deck" do
    two_of_spades = @deck.cards.first
    @deck.shuffle!
    new_first_card = @deck.cards.first
    expect(new_first_card).not_to eq two_of_spades
  end

  describe "comparisons" do
    it "rates cards appropriately" do
      four_of_hearts = Card.new(4, 'hearts')
      three_of_diamonds = Card.new(3, 'diamonds')
      result = CardDeck.compare(four_of_hearts, three_of_diamonds)
      expect(result).to eq "4 of hearts is greater than 3 of diamonds"
    end

    it "rates an ace higher than anything" do
      king_of_hearts = Card.new(13, 'hearts')
      ace_of_spades = Card.new(14, 'spades')
      result = CardDeck.compare(king_of_hearts, ace_of_spades)
      expect(result).to eq "king of hearts is less than ace of spades"
      # the ACE of SPAAAADES, the ACE of SPAAAADES ~guitar riff~
    end

    it "considers equal values of different suits equal" do
      six_of_clubs = Card.new(6, 'clubs')
      six_of_diamonds = Card.new(6, 'diamonds')
      result = CardDeck.compare(six_of_clubs, six_of_diamonds)
      expect(result).to eq "6 of clubs is equal to 6 of diamonds"
    end
  end
end
