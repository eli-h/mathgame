require './game'
require './player'
require './question'

player1 = MathGame::Player.new('Trump')
player2 = MathGame::Player.new('Hillary')

newGame = MathGame::Game.new(player1, player2)
newGame.start_game