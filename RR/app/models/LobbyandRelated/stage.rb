class Stage
  def initialize
    @rappers = []
    #should make a defensive check for rappers ot maek sure theres 2 people in it
  end

  def add_rappers(player1, player2)
    @rappers<<player1
    @rappers<<player2
  end

end