class Game
  MAX_PLAYERS = 2
  SLEEP = 1

  def initialize
    @number_of_players = MAX_PLAYERS

    @players = []

    @question = nil
    @answer = nil

    @turn = 0
    @winner = nil

    game
  end

  private

  def game
    set_players

    while @winner == nil
      game_loop
    end

    puts "Congratulations, #{@winner.name}! You win with #{@winner.lives} tries to spare!"
  end
  
  def game_loop
      puts "#{@players[0].name}: #{@players[0].lives} vs. #{@players[1].name}: #{@players[1].lives}"
      new_question
      current_player = @players[@turn % MAX_PLAYERS]
      player_name = current_player.name
  
      puts "#{player_name}: #{@question}"
      @answer = gets.chomp
  
      if(check_answer)
        puts ["Great job, #{player_name}! You're not as dumb as you look!", "You are correct, #{player_name}!", "#{player_name} gets it right!"].sample
      else
        puts ["BZZZT! Wrong answer, #{player_name}!", "This is basic math! Are you even trying, #{player_name}?", "#{player_name} is incorrect! Muhammad ibn Musa al-Khwarizmi is disappointed."].sample
        
        current_player.remove_life

        if current_player.lives <= 0
          @winner = @players[(@turn + 1) % MAX_PLAYERS]
        end
      end

      @turn += 1
  end

  def set_players
    MAX_PLAYERS.times {
      puts "Player #{Player.number_of_players + 1}, enter your name."
      @players.push(Player.new(gets.chomp))
    }

    puts @players
  end

  def new_question
    @question = Question.new
  end

  def check_answer
    @question.answer.to_s == @answer
  end

end