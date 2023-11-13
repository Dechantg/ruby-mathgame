


module GameSetup
  def self.get_players
    print "How many players in this game? "
    num_players = gets.chomp.to_i

    print "How many lives for each player? "
    num_lives = gets.chomp.to_i

    { players: num_players, lives: num_lives }
  end

  def self.setup_players
    game_settings = get_players

    new_players = game_settings[:players]
    num_lives = game_settings[:lives]

    players = []

    new_players.times do |index|
      print "Player #{index + 1} name: "
      player_name = gets.chomp
      players << Player.new(player_name, num_lives, num_lives)
    end

    players
  end
end