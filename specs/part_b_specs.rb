require("minitest/autorun")
require("minitest/rg")
require_relative("../part_b")

class TestTeam < Minitest::Test

  def setup
    @team = Team.new("Wildcats", ["John", "Jeff", "George", "Geoffrey"], "Coach Bob")
  end

  def test_get_team_name
    result = @team.team_name
    assert_equal("Wildcats", result)
  end

  def test_get_players
    result = @team.players
    assert_equal(["John", "Jeff", "George", "Geoffrey"], result)
  end

  def test_get_coach
    result = @team.coach
    assert_equal("Coach Bob", result)
  end

  def test_set_coach
    result = @team.coach = "Josh"
    assert_equal("Josh", result)
  end

  def test_add_new_player
    @team.add_new_player("Jacob")
    result = @team.players
    assert_equal(["John", "Jeff", "George", "Geoffrey", "Jacob"], result)
  end

  def test_check_player
    result = @team.check_player("George")
    assert_equal(true, result)
  end

  def test_add_points__win
    result = @team.add_points("win")
    assert_equal(3, result)
  end

  def test_add_points__lose
    result = @team.add_points("lose")
    assert_equal(0, result)
  end

end
