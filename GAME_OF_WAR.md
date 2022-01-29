1. A class that represents the results of a fully played game of War:

The objective of the game is to win all of the cards.

The deck is divided evenly among the players, giving each a down stack.

- Player class, each will own an instance of the CardDeck class

In unison, each player reveals the top card of their deck (this is a "battle") and the player with the higher card takes both of the cards played and moves them to the bottom of their deck. Aces are high, and suits are ignored.

- Game.battle
  - reveal top card of deck, move to bottom (return method)
  - need to modify the return method to receive 2 new cards, one of which will be the one that the player just revealed, the other being the one the other player just revealed
  - the person who "wins" by this ranking will get the cards

If the two cards played are of equal value, then there is a "war". Both players place the next three cards face down and then another card face-up. The owner of the higher face-up card wins the war and adds all the cards on the table to the bottom of their deck. If the face-up cards are again equal then the battle repeats with another set of face-down/up cards. This repeats until one player's face-up card is higher than their opponent's.

- new class: Game represents a fully played game. no decisions to be made
- modify CardDeck.deal to deal 4 cards, one of which will be the "battling card"
- some form of recursion in case the cards are of equal value

If a player does not have enough cards to play a battle/war (including face-down cards), they immediately lose. If both players lose simultaneously, the game is a tie.

- Game.check_for_win
  - if Game.battle, ensure both players have at least one card
  - if in Game.war, ensure both players have at least 4 cards

Since there is no decision-making by the players, the instantiated object needs only to be able to report on the chronological results of each battle/round (including the cards that were played and the number of cards that each player is holding) and the final winner of the game.

- The property that will be modified after each Game.battle OR Game.war we will call Player.card_count
