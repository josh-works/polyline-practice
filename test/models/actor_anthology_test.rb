require "test_helper"

class ActorAnthologyTest < ActiveSupport::TestCase
  def setup
    @aa = actor_anthologies(:one)
  end
  
   
  test "it has a collection of movies" do
    skip
    assert @aa.movies
  end
  
  test "it has a name" do
    assert_equal @aa.name, "Philip Seymour Hoffman"
  end
end
