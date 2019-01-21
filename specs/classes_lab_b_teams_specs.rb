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

  def test_get_team_name
    assert_equal("Gryffindor", @team.get_team_name)
  end

  def test_get_team_list
    assert_equal(["Ron Weasely", "Harry Potter", "Hermione Granger"], @team.get_team_list)
  end

  def test_get_coach_name
    assert_equal("Hagrid", @team.get_coach)
  end

end
