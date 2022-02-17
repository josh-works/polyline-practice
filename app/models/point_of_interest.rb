class PointOfInterest < ApplicationRecord
  before_save :build_lat_long_from_coords
  
  def build_lat_long_from_coords
    if self.coords && (self.latitude.nil? || self.longitude.nil?)
      lat = coords.split(",").first.to_f
      long = coords.split(",").last.to_f
      self.latitude = lat
      self.longitude = long
    end
  end
end
