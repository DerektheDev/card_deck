class Card
  attr_reader :suit, :value, :name, :rank

  def initialize(value, suit)
    @suit = self.class.validate_suit suit
    @value = value
    @rank = rank
  end

  def name
    "#{@rank} of #{@suit}"
  end

  def rank
    case value
    when 11 then 'jack'
    when 12 then 'queen'
    when 13 then 'king'
    when 14 then 'ace'
    else
      value
    end
  end

  def self.validate_suit suit
    return suit if ['spades', 'hearts', 'diamonds', 'clubs'].include? suit
    raise StandardError.new "Silly rabbit, #{suit} isn't a real card suit"
  end
end