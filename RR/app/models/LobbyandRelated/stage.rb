class Stage
  def initialize
    @rappers = []
    #should make a defensive check for rappers ot maek sure theres 2 people in it
  end

  def add_rappers(player1, player2)
    player1.role_permissions<<Rapper
    player2.role_permissions<<Rapper
    @rappers<<player1
    @rappers<<player2
  end

  def remove_rappers
    # removes the rapper permission then clears the list
    @rappers.each do |player|
      player.role_permissions.delete(Rapper)
    end
    @rappers.clear
  end

  # is the stage full? returns a boolean value
  def is_full
    if @rappers.count == 2
      true
    else
      false
    end
  end

  #checks if a stage is valid with the participants
  # having 1 rapper on stage is not good enough
  def is_valid
    if @rappers.count == 2 || @rappers.count == 0
      true
    else
      false
    end
  end

end