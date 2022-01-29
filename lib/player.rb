class Player
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def card_count
    cards.count
  end
end