class Audience
  def initialize
    @seating = []
  end

  def add_viewer(player)
    player.role_permissions<<Spectator
    @seating<<player
  end

  def remove_viewer(player)
    player.role_permissions.delete(Spectator)
    @seating.delete(player)
  end

  def all_judge # ONLY CHANGES PERMISSIONS, USE THE ALL JUDGE IN THE LOBBY CLASS
    @seating.each do |player|
      player.role_permissions<<Judge
    end
  end
end