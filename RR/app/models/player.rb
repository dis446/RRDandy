class Player
  def initialize(name)
    @name = name
    @chat_permissions = []  # what the user can do in chat
    @role_permissions = []  # what the user can do in the ocncert
    @wins = 0
    @losses = 0
  end

end