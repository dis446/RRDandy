class Vote < Command
  def initialize(booth, rapper)
    @booth = booth
    @rapper = rapper
  end

  #executes the command
  def execute
    if @rapper.player_number == 1
      @booth.vote1 += 1
    end
    if @rapper.player_number == 2
      @booth.vote2 += 1
    end
  end

end