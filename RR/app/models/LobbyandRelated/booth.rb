class Booth
  def initialize
    @booth_seats = []
    @vote1 = 0
    @vote2 = 0
  end

  attr_accessor :booth_seats
  #methods to add
  # add judges - how many judges, can everyone be a judge?
  # remove judges

  # adds a judge permission to the player then adds them to the booth
  def add_judge(player)
    player.role_permissions<<Judge
    @booth_seats<<player
  end

  #removes judge permission from the players and then removes them from the booth
  def end_match
    @booth_seats.each do |player|
      if player.role_permissions.include? Judge
        player.role_permissions.delete(Judge)
      end
      #reset the booth here
      @booth_seats.clear
      @vote1 = 0
      @vote2 = 0
    end
  end

  def get_winner
    #tally the votes here and determine the winner
    # go through all the judges and get who they vvoted for, then add to the
    # appropriate tally
  end

end