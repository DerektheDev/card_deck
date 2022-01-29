class Game
  def initialize
    # todo: do we need to initialize with any props?
    # @turn_count = 0
    # play the game

    @turn_count = 0
    @rounds = [] # each round will contain: winner, cards per player, cards played []

    deck = CardDeck.new
    deck.shuffle!

    player_one = Player.new
    player_two = Player.new

    cards_length = deck.cards.length # int

    deck.cards.each do |card|
      # 
    end

    
    results_of_round = battle

    # This returns a fully played game
    # - turn_count
    # - winner
    # - number of cards in each round
    # - cards that were played in each round
  end

  def battle
    # ensure that both players have at least one card
    # will return: 
    # - round: winner, cards per player, cards
    # - 
  end

  def war
    # 
  end

  def check_for_win
    # 
  end
end