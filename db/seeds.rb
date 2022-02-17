description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
latitude =  39.7664442
longitude = -105.228456
PointOfInterest.find_or_create_by(
  description: description,
  latitude: latitude,
  longitude: longitude
)

local_intersection = PointOfInterest.find_or_create_by(
  description: "This is a dangerous street for cyclists; drivers get annoyed with cyclists, and vice versa.",
  latitude: 39.766444,
  longitude: -105.228456
)
p local_intersection

PointOfInterest.find_or_create_by(
  latitude: 39.756113,
  longitude: -105.229665,
  description: "Tons of people take this path, but it's unpaved and uneaven. Particularly dangerous at night or when there's snow, or if pushing a stroller." 
)
