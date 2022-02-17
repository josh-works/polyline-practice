# coordinates from https://3geonames.org/randomland.USA, and a bunch of clicking
coords = [    
  39.76622709413315,-105.22932827525855
  39.76622709413315,-105.22932827525855
  39.76507172805369,-105.22876739501953
  39.75840785139829,-105.22524833679199
  39.7467280172376,-105.22061347961427
  39.75425084928869,-105.22481918334962
  39.76071718860089,-105.22627830505371
  39.763141909318925,-105.22679328918458
  39.76485730642079,-105.2269220352173
  39.76657266078731,-105.2268147468567
]
# icons
bike_person = 'biker-walker-accident-red.png'
car_bike = 'car-bike-crash-red.png'
car_person = 'driver-walker-accident-red.png'
person = 'wheelchair-confused-red.png'
roundabout = 'crossroad.png'

description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
latitude =  39.7664442
longitude = -105.228456
PointOfInterest.find_or_create_by(
  description: description,
  coords: 39.76622709413315,-105.22932827525855
  icon: car_person
)

local_intersection = PointOfInterest.find_or_create_by(
  description: "This is a dangerous street for cyclists; drivers get annoyed with cyclists, and vice versa.",
  coords: 39.76622709413315,-105.22932827525855
  icon: bike_person
)
p local_intersection

PointOfInterest.find_or_create_by(
  coords: 39.76071718860089,-105.22627830505371
  description: "Tons of people take this path, but it's unpaved and uneaven. Particularly dangerous at night or when there's snow, or if pushing a stroller.",
  icon: person
)

PointOfInterest.find_or_create_by(
  coords: 39.76071718860089,-105.22627830505371
  description: "This could be one of those (many) roundabouts",
  icon: roundabout
)
