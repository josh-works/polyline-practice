require "test_helper"

class ActorAnthologyTest < ActiveSupport::TestCase
  def setup
    
    @aa = actor_anthologies(:one)
  end
  
  test "it has a collection of movies" do
    assert_equal @aa.name, "Philip Seymour Hoffman"
    # assert @aa.movies
  end
end
