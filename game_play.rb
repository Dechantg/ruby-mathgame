module GamePlay
  def self.play(players)


    while players.length > 1

      players.each do |player|
        puts "Player #{player.player}'s turn:"
  
        result = Questions.to_ask
  
       if result
        puts "#{player.player} has #{player.health} remaining!"
       else
        player.health -= 1
        puts "#{player.player} now has #{player.health} lives remaining."
    
      if player.health <= 0
       puts "#{player.player} has been eliminated!"
       players.delete(player)
      end

    end
  end
  end
end
end