require "test_helper"

class PointOfInterestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "build_lat_long_from_coords" do
    poi = PointOfInterest.new(
      description: "1",
      icon: "icon.png",
      coords: "39.76622709413315,-105.22932827525855"
    )
    
    refute poi.latitude
    refute poi.longitude
    
    poi.build_lat_long_from_coords
    poi.save

    assert_equal poi.latitude, 39.76622709413315
    assert_equal poi.longitude, -105.22932827525855
  end
end
