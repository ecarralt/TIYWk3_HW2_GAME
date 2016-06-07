class Game
  attr_accessor :player_one_choice, :computer

  def play
    puts "Ready to play? Choose (r)ock, (p)aper or (s)cissors. Just write the first letter of each"
    @player_one_choice = gets.chomp

  end

end

game = Game.new


game.play
