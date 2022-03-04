require "application_system_test_case"

class RootTest < ApplicationSystemTestCase
  setup do
    # @anthology = anthologies(:one)
  end
  
  test "has a link to key pages in navbar" do
    visit root_url
    assert_selector "h1", text: "Points of Interest"
  end
end