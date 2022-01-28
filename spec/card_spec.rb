RSpec.describe Card do
  it "can print out a human-readable name" do
    card = Card.new(4, "hearts")
    expect(card.name).to eq "4 of hearts"
  end

  it "makes fun of you if you invent new suits" do
    expect do
      Card.new(12, "butts")
    end.to raise_error "Silly rabbit, butts isn't a real card suit"
  end

  context "describes the rank of the card" do
    it "returns an int for numbers up to 10" do
      card = Card.new(9, "spades")
      expect(card.rank).to eq 9
    end

    it "returns a string for numbers 11 - 14" do
      card = Card.new(12, "diamonds")
      expect(card.rank).to eq "queen"
    end
  end
end
