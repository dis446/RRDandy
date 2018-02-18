class Stage
  def initialize
    @rappers = []
    @rap_queue = []
    #should make a defensive check for rappers ot maek sure theres 2 people in it
  end

  attr_accessor :rap_queue

  def add_rappers(player1, player2)
    player1.role_permissions<<Rapper
    player1.player_number = (1)
    player2.role_permissions<<Rapper
    player2.player_number = (2)
    @rappers<<player1
    @rappers<<player2
  end

  def set_rappers
    min_rappers = 2   #can change this varibale if you make different stages
    if @rap_queue.count < min_rappers
      raise "must have at least 2 rappers in queue to start match "
    end
    p1 = @rap_queue.shift
    p2 = @rap_queue.shift
    self.add_rappers(p1,p2)
  end

  def remove_rappers
    # removes the rapper permission then clears the list
    @rappers.each do |player|
      player.player_number = nil
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