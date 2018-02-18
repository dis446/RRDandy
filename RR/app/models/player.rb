class Player
  def initialize(name)
    @name = name
    @chat_permissions = []  # what the user can do in chat
    @role_permissions = []  # what the user can do in the ocncert
    @wins = 0
    @losses = 0
    @player_number = nil
    #adds the base permissions to the user
    @role_permissions<<User
  end
  attr_accessor :role_permissions
  attr_reader :chat_permissions
  attr_reader :wins
  attr_reader :losses
  attr_accessor :player_number



end