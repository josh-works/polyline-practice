require "test_helper"

class ActorAnthologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actor_anthology = actor_anthologies(:one)
  end

  test "should get index" do
    get actor_anthologies_url
    assert_response :success
  end

  test "should get new" do
    get new_actor_anthology_url
    assert_response :success
  end

  test "should create actor_anthology" do
    skip
    assert_difference("ActorAnthology.count") do
      post actor_anthologies_url, params: { actor_anthology: { name: @actor_anthology.name, 
                                                              picture_url: @actor_anthology.picture_url,
                                                              birth_year: @actor_anthology.birth_year.to_s,
                                                              birth_city: @actor_anthology.birth_city,
                                                              } }
                                                            
    end

    assert_redirected_to actor_anthology_url(ActorAnthology.last)
  end

  test "should show actor_anthology" do
    get actor_anthology_url(@actor_anthology)
    assert_response :success
  end

  test "should get edit" do
    get edit_actor_anthology_url(@actor_anthology)
    assert_response :success
  end

  test "should update actor_anthology" do
    patch actor_anthology_url(@actor_anthology), params: { actor_anthology: { name: @actor_anthology.name, picture_url: @actor_anthology.picture_url } }
    assert_redirected_to actor_anthology_url(@actor_anthology)
  end

  test "should destroy actor_anthology" do
    assert_difference("ActorAnthology.count", -1) do
      delete actor_anthology_url(@actor_anthology)
    end

    assert_redirected_to actor_anthologies_url
  end
end
