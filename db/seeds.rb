PointOfInterest.destroy_all
# coordinates from https://3geonames.org/randomland.USA, and a bunch of clicking
coords = %i[    
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
icons = %i[
  biker-walker-accident-red.png
  car-bike-crash-red.png
  driver-walker-accident-red.png
  wheelchair-confused-red.png
  crossroad.png
]
roundabout = 'crossroad.png'

# creating points of interest (aka points on a map)
description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
PointOfInterest.find_or_create_by(
  description: description,
  latitude: 39.7664442,
  longitude: -105.228456,
  icon: icons.sample
)

local_intersection = PointOfInterest.find_or_create_by(
  description: "This is a dangerous street for cyclists; drivers get annoyed with cyclists, and vice versa.",
  latitude: 39.766444,
  longitude: -105.228456,
  icon: icons.sample
)
puts local_intersection.inspect 
# sanity check that stuff is working, see what ID got written to db, etc

PointOfInterest.find_or_create_by(
  latitude: 39.756113,
  longitude: -105.229665,
  description: "Tons of people take this path, but it's unpaved and uneaven. Particularly dangerous at night or when there's snow, or if pushing a stroller.",
  icon: icons.sample
)

PointOfInterest.find_or_create_by(
  latitude: 39.764528,
  longitude: -105.227446,
  description: "This could be one of those (many) roundabouts",
  icon: roundabout
)

5.times do |n|
  puts PointOfInterest.create(
    description: "#{n} thingamabob",
    icon: icons.sample,
    coords: coords.sample,
  ).inspect
end

#############################
# Actor Anthologies Feature #
#############################

aa = ActorAnthology.create(
  name: "Philip Seymour Hoffman",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Philip_Seymour_Hoffman_2011.jpg/440px-Philip_Seymour_Hoffman_2011.jpg",
  birth_year: 1967,
  death_year: nil,
  birth_city: "Fairport, NY"
)

5.times do |n|
  aa = ActorAnthology.create(
    name: Faker::Name.name,
    image_url: Faker::Avatar.image,
    birth_year: 1933,
    death_year: 2002
  )
  puts aa.name
end