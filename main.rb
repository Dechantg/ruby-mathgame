
require './player'
require './game_settings'
require './questions'
require './game_play'

include Questions
include GameSetup
include GamePlay


players = GameSetup.setup_players

GamePlay.play(players)


puts "Game Over! #{players.first.player} is the winner!"
