class Lobby
  def initialize
    @rap_queue = []
    @booth_queue = []
    @booth = Booth.new
    @stage = Stage.new
    @audience = Audience.new
    @players = [] # general list of players
  end

  # how someone gets added to the audience and the game in general
  def add_viewer(player)
    @audience.add_viewer(player)
  end

  #makes everybody in the audience a judge
  def all_judge
    #defensive check for rappers in the stage
    unless self.stage.is_full
      raise "stage must be full to make everyone a judge"
    end
    # makes the booth seats point to the audience
    @audience.all_judge # method in the audience class that makes everyone a judge
    @booth.booth_seats = @audience.seating
  end

  def end_match
    @booth.end_match
    @stage.remove_rappers
  end

  def add_to_rap_queue(player)
    @rap_queue<<player
  end

  def add_to_booth_queue(player)
    @booth_queue<<player
  end

  def set_rappers
    min_rappers = 2   #can change this varibale if you make different stages
    if @rap_queue.count < min_rappers
      raise "must have at least 2 rappers in queue to start match "
    end
    p1 = @rap_queue.shift
    p2 = @rap_queue.shift
    @stage.add_rappers(p1,p2)
  end

  #end concert

  #sets jusdges by a number
  # if the number is all the spectators, just sets them all as judges
  # if the number is still greater than the judges just stops when the judge queue runs out
  def set_judges(num)
    if num >= @audience.count
      self.all_judge
    end
    (1..num).each do
      if @booth_queue.empty?
        break
      end
      judge = @booth_queue.shift
      @booth_queue<<judge
    end
  end

end