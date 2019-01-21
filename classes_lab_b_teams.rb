# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab
# B Teams

class Team

  def initialize(team_name_string, player_name_array, coach_name_string) # note American spelling. Ruby in built method.
    @team_name_string = team_name_string#create instance variables which draw from local variables above
    @player_name_array = player_name_array #instance variable on left, local scoped variable on right available to whole class
    @coach_name_string = coach_name_string # this initial set up enables variables to be accessed outside function
  end

def get_team_name
  return @team_name_string
end

def get_team_list
  return @player_name_array
end

end
