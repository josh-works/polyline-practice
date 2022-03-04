require "application_system_test_case"

class ActorAnthologiesTest < ApplicationSystemTestCase
  setup do
    @actor_anthology = actor_anthologies(:one)
  end

  test "visiting the index" do
    visit actor_anthologies_url
    assert_selector "h1", text: "Actor anthologies"
  end

  test "should create actor anthology" do
    visit actor_anthologies_url
    click_on "New actor anthology"

    fill_in "Name", with: @actor_anthology.name
    fill_in "Picture url", with: @actor_anthology.picture_url
    click_on "Create Actor anthology"

    assert_text "Actor anthology was successfully created"
    click_on "Back"
  end

  test "should update Actor anthology" do
    visit actor_anthology_url(@actor_anthology)
    click_on "Edit this actor anthology", match: :first

    fill_in "Name", with: @actor_anthology.name
    fill_in "Picture url", with: @actor_anthology.picture_url
    click_on "Update Actor anthology"

    assert_text "Actor anthology was successfully updated"
    click_on "Back"
  end

  test "should destroy Actor anthology" do
    visit actor_anthology_url(@actor_anthology)
    click_on "Destroy this actor anthology", match: :first

    assert_text "Actor anthology was successfully destroyed"
  end
end
