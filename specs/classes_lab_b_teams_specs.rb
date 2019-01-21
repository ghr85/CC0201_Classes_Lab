# Codeclan Week 02 Day 01
# Classes, Objects, Attribute Accessors, Methods & behaviours
#
# Classes Lab Test Specifications
# B Teams

require('minitest/autorun') #require minitest
require('minitest/rg') # require minitest colourisation
require_relative('../classes_lab_b_teams.rb') # require related source code

class TestTeam < MiniTest::Test
  def setup #set up data to play with
    @team = Team.new("Gryffindor",["Ron Weasely", "Harry Potter", "Hermione Granger"], "Hagrid") #supply dummy data
  end

  def test_get_team_name #getter
    assert_equal("Gryffindor", @team.team_name_string())
  end

  def test_get_team_list #getter
    assert_equal(["Ron Weasely", "Harry Potter", "Hermione Granger"], @team.player_name_array())
  end

  def test_get_coach_name #getter
    assert_equal("Hagrid", @team.coach_name_string())
  end

  def test_set_coach_name #setter
    @team.set_coach_name("Snape")
    assert_equal("Snape", @team.coach_name_string())
  end

  def test_add_player
    @team.add_player("Professor McGonagle")
    assert_equal(["Ron Weasely", "Harry Potter", "Hermione Granger", "Professor McGonagle"],@team.player_name_array())
  end

  def test_find_player__found
    assert_equal("Harry Potter is on the Gryffindor team!", @team.find_player("Harry Potter"))
  end

  def test_find_player__not_found
    assert_equal("Samuel L Jackson is not on the Gryffindor team.", @team.find_player("Samuel L Jackson"))
  end
end
