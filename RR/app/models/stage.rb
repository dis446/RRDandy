class Stage
  # just a stubbed out method in here
  #
  def initialize
    @player1 = nil
    @player2 = nil
  end

  def add_players(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_battle

  end

  def end_battle
    #needs more but removes the player
    @player1 = nil
    @player2 = nil
  end

  def vote(player)

  end
end