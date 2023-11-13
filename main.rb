
require './player'
require './questions'

include Questions


def get_players
  print "How many players in this game? > "
  num_players = gets.chomp.to_i
  print "How many lives in the game? > "
  num_lives = gets.chomp.to_i

  {players: num_players, lives: num_lives}
end

# def get_lives


game_settings = get_players

new_players = game_settings[:players]
num_lives = game_settings[:lives]

players = []

new_players.times do |index|
  print "Player #{index + 1} name: "
  player_name = gets.chomp
  players << Player.new(player_name, num_lives, num_lives)
end

puts "Players in the game:"
players.each do |players|
  puts "Name: #{players.player}, Lives: #{players.health}"
end


result = Questions.to_ask

if result
  puts "Yay"
else
  puts "Nay"

end

