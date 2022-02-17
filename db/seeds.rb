# icons
bike_person = 'biker-walker-accident-red.png'
car_bike = 'car-bike-crash-red.png'
car_person = 'driver-walker-accident-red.png'
person = 'wheelchair-confused-red.png'

description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
latitude =  39.7664442
longitude = -105.228456
PointOfInterest.find_or_create_by(
  description: description,
  latitude: latitude,
  longitude: longitude,
  icon: car_person
)

local_intersection = PointOfInterest.find_or_create_by(
  description: "This is a dangerous street for cyclists; drivers get annoyed with cyclists, and vice versa.",
  latitude: 39.766444,
  longitude: -105.228456,
  icon: bike_person
)
p local_intersection

PointOfInterest.find_or_create_by(
  latitude: 39.756113,
  longitude: -105.229665,
  description: "Tons of people take this path, but it's unpaved and uneaven. Particularly dangerous at night or when there's snow, or if pushing a stroller.",
  icon: person
)
