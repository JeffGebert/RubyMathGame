require_relative 'player'


class Game

    def initialize
        @player1 = Player.new('Surgey Girl')
        @player2 = Player.new('Metro Jumpin Slav')
        @players = [@player1, @player2].shuffle
        @round = 1
    
      end

      def game_over?
        alive_players.length == 1
      end

      def alive_players
        @players.select{|player| !player.dead?}
      end

      def next_round
        @round += 1 
        @players.rotate!
      end

      def game_status
        puts "#{@player1.name}: #{@player1.lives}/3 VS #{@player2.name}: #{@player2.lives}/3"
        puts " ----- NEW TURN ------- "
     end

     def run 
        until game_over? do
            current_player = @players.first
            @number1 = rand(1...20)
            @number2 = rand(1...20)
            @answer = @number1 + @number2
            puts "#{current_player.name}: What does #{@number1} plus #{@number2} equal?"
            a = gets.chomp.to_i
            if a == @answer
                current_player.correct
            else
                current_player.incorrect
            end

            game_status
            next_round
        end
        puts "Winner is #{alive_players.first.name}"
    end

        

end


