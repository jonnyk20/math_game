class Game

  def initialize
    @p1 = Player.new('player 1', 3)
    @p2 = Player.new('player 2', 3)
    @active_player = @p1
    puts "Starting game"
    run_turn
  end

  def run_turn
    turn = Turn.new(@active_player)
    report_score
  end

  def report_score
    if winner?
      puts "game over #{winner?.name} wins with a score of #{winner?.lives}/3"
    else
      puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
      switch_turns
    end
  end

  def switch_turns
    if @active_player == @p1
      @active_player = @p2
    else
      @active_player == @p1
    end
    run_turn
  end

  def winner?
    if @p1.lives == 0
      @p2
    elsif @p2.lives == 0
      @p1
    end
  end

  def end_game
  end

end