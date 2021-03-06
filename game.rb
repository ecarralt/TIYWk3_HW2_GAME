class Game
  attr_accessor :player_one_choice, :computer, :player_disp, :computer_disp

  def play
    puts "Ready to play? Choose (r)ock, (p)aper or (s)cissors. Just write the first letter of each"
    @player_one_choice = gets.chomp.downcase

    if (@player_one_choice != "r" && @player_one_choice != "p" && @player_one_choice != "s")
      puts "Oops,that is not a valid choice! Please play again"
      exit
    else
    end

    game_choices = ["r", "p", "s"]
    @computer = game_choices.sample

    case @player_one_choice
    when "r"
      player_disp = "ROCK"
    when "p"
      player_disp = "PAPER"
    when "s"
      player_disp = "SCISORS"
    end
    
    case @computer
    when "r"
      computer_disp = "ROCK"
    when "p"
      computer_disp = "PAPER"
    when "s"
      computer_disp = "SCISORS"
    end

    case player_one_choice
    when "r"
      if computer == "r"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----IT'S A TIE"
      elsif computer == "p"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----YOU LOSE"
      elsif computer == "s"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----YOU WIN"
      end
    when "p"
      if computer == "r"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----YOU WIN"
      elsif computer == "p"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----IT'S A TIE"
      elsif computer == "s"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----YOU LOSE"
      end
    when "s"
      if computer == "r"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----YOU LOSE"
      elsif computer == "p"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----YOU WIN"
      elsif computer == "s"
        puts "Player: #{player_disp} vs Computer: #{computer_disp}----IT'S A TIE"
      end
    end

  end

end

game = Game.new
game.play
