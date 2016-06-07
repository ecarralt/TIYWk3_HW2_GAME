class Game
  attr_accessor :player_one_choice, :computer

  def play
    puts "Ready to play? Choose (r)ock, (p)aper or (s)cissors. Just write the first letter of each"
    @player_one_choice = gets.chomp
    puts "your choice is #{player_one_choice}"

    game_choices = ["r", "p", "s"]

    @computer = game_choices.sample

    puts "The computer's choice is #{computer}"

    case player_one_choice
    when "r"
      if computer == "r"
        puts "IT'S A TIE"
      elsif computer == "p"
        puts "YOU LOSE"
      elsif computer == "s"
        puts "YOU WIN"
      end
    when "p"
      if computer == "r"
        puts "YOU WIN"
      elsif computer == "p"
        puts "IT'S A TIE"
      elsif computer == "s"
        puts "YOU LOSE"
      end
    when "s"
      if computer == "r"
        puts "YOU LOSE"
      elsif computer == "p"
        puts "YOU WIN"
      elsif computer == "s"
        puts "IT'S A TIE"
      end
    end

  end

end

game = Game.new


game.play
