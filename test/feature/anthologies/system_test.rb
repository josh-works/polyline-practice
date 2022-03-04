require "application_system_test_case"

class AnthologiesTest < ApplicationSystemTestCase
  setup do
    # @point_of_interest = point_of_interests(:one)
    # @anthology = anthologies(:one)
  end

  test "visiting the index" do
    skip
    visit anthologies_url
    assert_selector "h1", text: "Anthologies"
  end
  
  test "index shows random or recent anthologies" do
    skip
    visit anthologies_url
    assert_selector "table", text: "Recent Anthologies"
    # selector = find_element_by_id(:anthologies)
    assert_equal 3, selector.count
    
  end

  test "should create anthology" do
    skip
    visit point_of_interests_url
    click_on "New point of interest"

    fill_in "Description", with: @point_of_interest.description
    fill_in "Latitude", with: @point_of_interest.latitude
    fill_in "Longitude", with: @point_of_interest.longitude
    fill_in "Name", with: @point_of_interest.name
    click_on "Create Point of interest"

    assert_text "Point of interest was successfully created"
    click_on "Back"
  end

  test "should update Point of interest" do
    skip
    visit point_of_interest_url(@point_of_interest)
    click_on "Edit this point of interest", match: :first

    fill_in "Description", with: @point_of_interest.description
    fill_in "Latitude", with: @point_of_interest.latitude
    fill_in "Longitude", with: @point_of_interest.longitude
    fill_in "Name", with: @point_of_interest.name
    click_on "Update Point of interest"

    assert_text "Point of interest was successfully updated"
    click_on "Back"
  end

  test "should destroy Point of interest" do
    skip
    visit point_of_interest_url(@point_of_interest)
    click_on "Destroy this point of interest", match: :first

    assert_text "Point of interest was successfully destroyed"
  end
end
