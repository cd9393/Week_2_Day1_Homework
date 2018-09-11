class Team

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach,)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

def add_new_player(player)
  @players.push(player)
end

def check_player(player)
  @players.include? (player)
end

def add_points(result)
  if result == "win"
    @points += 3
  end
  return @points
end

#   def get_team_name
#     return @team_name
#   end
#
#   def get_players
#     return @players
#   end
#
# def get_coach
#   return @coach
# end
#
# def set_coach(name)
#   @coach = name
# end

end
