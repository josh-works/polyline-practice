
## 2022-02-16
 
 ```
$ rails _7.0.2_ new polyline-practice --database postgresql --css tailwind
```

```
rails g scaffold PointOfInterest name:string latitude:float longitude:float description:text
```
 
```ruby
# seeds.rb
name = "intersection in Golden, CO"
description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
latitude =  39.766444,  
longitude = -105.228456
PointOfInterest.create(
  name: name
  ,description: description
  ,latitude: latitude
  ,longitude: longitude
)
```

Then visit `/poi/1` and this should have a little pin on a leaflet map. 

That's the plan. Let's add ourselves our standard gems, `pry-rails` and `faker`

ooookay. 

Spent maybe 45 minutes digging into this, quickly, didn't take notes, so now I'm going to try to:

1. For starters, source necessary JS/CSS in application.html.erb. That'll make the available everywhere.
2. Copy/paste solid "map" stuff into a view, sort out everything there

I referred to lots of my prior art on leaflet, html stuff, and more. God I barely can hold a single thing in my head. 

I'm liking where this is going, though:

![progress](/images/we-have-rendered-an-icon.jpg)

and another 30, making more progress. Here's what I can get on page-load:

![mvp](/images/mvp.jpg)

Cool! I'm liking this. Here's what I've got in the partial, more or less:

1. a `div` with the `id` of `map`. That div is going to be passed to a Mapbox/leafelet function to get turned into a map:

```javascript
var map = L.map('map').setView([39.766444, -105.228456], 19);
// `map` is from that div you added, remember?
L.tileLayer(
  'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      maxZoom: 22,
  }).addTo(map);
```

and that renders a map! 

adding/committing. am getting some strange styling issues. The map doesn't render right on page load, but if you modify the dimensions of the browser at all, everything snaps into place.

_i'm going to add a Loom video with this, and a link to the code in question_

_doing the above later, I want to play now with generating this data FROM the DB, and getting it INTO the DB_

### CRUD-ifying the pin

I think I want just the lat and long in a DB, along with a description

(maybe add tags later)

```ruby
# db/seeds.rb
local_intersection = PointOfInterest.create(
  description: "This is a dangerous street for cyclists; drivers get annoyed with cyclists, and vice versa.",
  latitude: 39.766444,
  longitude: -105.228456
)

# example of how this might look in a test
visit point_of_interest_path(local_intersection)

expect(map.description).to eq(local_intersection.description)
```

and I should be able to retrieve this object on the show page, now. (Remember, it's currently all hard-coded. It might be true to say "it's jankier than it looks")

Hell yeah. It works. 

I've got it now all reading from the DB. Let's create a few more locations, and this time (since I'm copy-pasting from a different leaflet practice thing I did, which had icons...)...

and it looks great! A little styling work, and I think we're good to go!

I also added a header. This is looking pretty good!

The new form looks good to. I want to add a one-click "wherever you click on the map, the lat/long fields get populated with that value" feature.


-----------


## Ideas for extensions along the way: 

### add before_save hook to add lat/long from street address, and vice versa

```ruby
#seeds.rb

Location.new(
  address: address
  friend:
  )

class Location  
  before_save: store_lat_long_from_address
  # etc
end
```
