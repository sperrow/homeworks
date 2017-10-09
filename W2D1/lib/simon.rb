require "colorize"

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @game_over = false
    @sequence_length = 1
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    system "clear"
    puts "GET READY"
    sleep 1
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      sleep 1
    end
  end

  def show_sequence
    add_random_color
    system "clear"
    puts "HERE IS YOUR SEQUENCE: "
    sleep 1
    @seq.each do |color|
      system "clear"
      puts "______"
      sleep 1
      system "clear"
      case color
      when "red"
        puts color.upcase.red
      when "blue"
        puts color.upcase.blue
      when "green"
        puts color.upcase.green
      when "yellow"
        puts color.upcase.yellow
      end

      sleep 1
    end
  end

  def require_sequence
    i = 0
    until i == @sequence_length
      system "clear"
      print "NEXT COLOR: "
      sleep 1
      guess = gets.chomp.downcase
      if guess != @seq[i]
        @game_over = true
        return
      end
      i += 1
    end
  end

  def add_random_color
    i = Random.rand(4)
    @seq << COLORS[i]
  end

  def round_success_message
    system "clear"
    puts "CORRECT SEQUENCE!"
    @sequence_length += 1
  end

  def game_over_message
    system "clear"
    puts "GAME OVERRRRR!"
    puts "SCORE: #{@sequence_length}".magenta
  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1
  end
end

if __FILE__ == $PROGRAM_NAME
  g = Simon.new
  g.play
end
