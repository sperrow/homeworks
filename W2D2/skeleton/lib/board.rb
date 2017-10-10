class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each do |i|
      4.times { @cups[i] << :stone }
    end
    (7..12).each do |i|
      4.times { @cups[i] << :stone }
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos == 6 || start_pos >= 13
    raise "Invalid starting cup" if @cups[start_pos].empty?
    return true if !@cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    cup = @cups[start_pos]
    @cups[start_pos] = []
    i = start_pos
    store = current_player_name == @name1 ? 6 : 13
    skip = current_player_name == @name1 ? 13 : 6
    until cup.empty?
      i += 1
      i = i % 13 if i > 13
      @cups[i] << cup.pop unless i == skip
    end

    result = nil
    if i == store
      result = :prompt
    elsif @cups[i].length <= 1
      next_turn(i)
    else
      result = :switch
    end

    render
    result
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine what #make_move returns
    make_move(ending_cup_idx, current_player_name)
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    bottom = true
    (0..5).each do |i|
      bottom = false if !@cups[i].empty?
    end
    top = true
    (7..12).each do |i|
      top = false if !@cups[i].empty?
    end
    bottom || top
  end

  def winner
    p1 = @cups[6]
    p2 = @cups[13]
    if p1.length > p2.length
      @name1
    else
      @name2
    end
  end
end
