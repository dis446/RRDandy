class Judge < Permission
  def initialize
    self.constructor
    @children = [Vote]
  end
end