# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab
# B Teams

class Team

  attr_accessor :coach_name_string, :player_name_array, :team_points_integer
  attr_reader :team_name_string

  def initialize(team_name_string, player_name_array, coach_name_string, team_points_integer) # note American spelling. Ruby in built method.
    @team_name_string = team_name_string#create instance variables which draw from local variables above
    @player_name_array = player_name_array #instance variable on left, local scoped variable on right available to whole class
    @coach_name_string = coach_name_string # this initial set up enables variables to be accessed outside function
    @team_points_integer = team_points_integer
  end

  def set_coach_name(new_coach_string) #setter
    @coach_name_string = new_coach_string
  end

  def add_player(new_player_string)
    @player_name_array << new_player_string
  end

  def find_player(query_player_string)
    for player_element in @player_name_array
      if query_player_string == player_element
        return "#{query_player_string} is on the #{team_name_string} team!"
      end
    end
    return "#{query_player_string} is not on the #{team_name_string} team."
  end

  def game_result(result_string)
    case result_string
    when "win"
      @team_points_integer += 3
    when "draw"
      @team_points_integer += 1
    when "lose"
      @team_points_integer -= 1
    end
  end


# ------these are all hashed out in favour of attribute accessor methods
# def get_team_name #getter
#   return @team_name_string
# end
#
# def get_team_list #getter
#   return @player_name_array
# end
#
# def get_coach #getter
#   return @coach_name_string
# end
#
# def set_coach_name(new_coach_string) #setter
#   @coach_name_string = new_coach_string
# end

end
