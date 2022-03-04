I've got a project I want to build, and it involves "data-visualization stuff" that mixes a bunch of interesting technologies. 

# About This Project

I am trying to wrap my head around polylines.

A `polyline` is a strange datatype that seems sorta like an SVG. It's mathematically-defined, so infinitely scablable, blah blah blah. 

On Wikipedia, `polyline` redirects to https://en.wikipedia.org/wiki/Polygonal_chain, which seems... nearly incomprehensible. 

I stumbled into the concept when copying a really cool python repository. I got it working! I can render a map of all of my Strava-recorded runs, centered on my home town of Golden, Colorado. Check it out:

![many](/images/many-polylines.jpg)

You can view an interactive version of this app here: https://cryptic-sea-38287.herokuapp.com

That looks cool, right! And polylines, since they're 'mathmatically defined', retain their "resolution" at many different levels of map scales:

![many-resolutions](/images/many-resolutions.jpg)

This is a big deal, and kinda blows my mind, because here's what a "short" polyline looks like:

```
efyqFzj_aSBI?B?APEJANDF?NMPAPIb@@\CLIVIN@fBVLARKFKDCVAZe@REDIPQBIHKNAJEN@NKDIJAZKTCJGXBFDJLDPAZHZ?XJf@HLL`@F^@^CVB\CZ?`AA\I^?RI^g@nAGXFZNTDNPX\Rb@DNHp@HTC?DKTABB?@ECB?D?A@@G??A@BB??CB?@BA@?C?@ABD?E?ACBGHKDC?FUR?A?BCC?@@A@@CHAA^Px@T`BVnBd@tAV`D~@zB`@l@Vh@`@tAnAbBvBz@|@zAtAtAfAPTNVt@hBj@jArAbCv@lAl@pAj@bBj@hCb@`EPv@Tr@LPl@j@l@z@Xl@Rn@j@xAHJJE\YLYD]A{@Ky@iAaFAOH]DENAF@FDLXp@dCv@`Ed@pBd@`DTnAz@|CvCbMbA|DpE~LnApCx@tBtJrSz@nAJTHXD`@ZtCb@`DXpA`@nAT`@jArA|CtD|AxAlCxBf@f@r@xBbBzDVt@j@pATr@ATm@f@kAxAqAfAgD`DiB|AwCxCmCvBuBtBcAx@iE~DuDbDyDvDkA~@CF@NVZh@`Aj@|@DPEC@B?CFE@SFBG?FC?AA@FQB@IPFIBKD?DG?CC?DE?BCE@BC?@GBFA?B?CCBBEBAGBA?@?AC@AD?AKFH??KCEF@FD?CCA@A@FACABB@?CDA?@E?ACCAD@IMDF?BE@AA?@?GDDE?BEA@CCD@AB?ECDB@ECF@AA?@AAD@G@?C@@CA@BBAGEFHEE?DACB?ACDBGCCFBIDDMAHBEEBDEI?DF@ICBD@E?D?CF@GAD?IBFAEA@FBE?CBDEB@@?CD@BGDD?FCEBBABAA@B@CGA?C@F?IA@?P@AGJ@BAG@A@DEDBEJ@C@AKC@B?C?H@K?MRERE?OUOk@GAEIOg@m@aAAEDO\SRWLSBKNKJA^]JS?UKOa@iAGu@K_@@GZKb@YTC`@SPGHED?JIRCDBLCJKXAPIJOTQHUTc@Na@nAkBVOLSVITQRERWD@^M\[^OHOLIX]d@y@^ETMXAZLx@Fr@XLOZSHITCPGBYECFMbBuAj@k@^QT_@VMj@{@\YPWFGPCVKlAeAf@m@NGFKHADINOJQRQLCFEDM@DJORK^i@@@?JJZBCBFAABGH@GKC?@BC?@KAHCEDJ?@MJADAAC@OKBIPIPFDCEB@@CHJCQ?UDGHCA@DEADA
```

This project is about:
- letting me get my feet under me with how `rails` and `leaflet` and different "gis" datatypes (like our friend the `polyline`) can play together.
- learning to think about map/data stuff in CRUD-friendly ways. PostGIS? Polylines?

I've already sunk quite a lot of time into related projects, so while I'm not exactly starting from scratch, I have hardly obtained much specialized information. _grumble grumble_

I could make this entire project a lesson, tutorial, basis of a talk, basis of a one-day work-shop. Depends on set and setting. What I also know is that I can teach a lot of useful things quickly, and I'd like to do just that. Could you [sponsor this open-source work?](https://github.com/sponsors/josh-works). 

I currently want to get at least ten sponsorships of at least $100/each. (obviously, some would be higher in dollar figure, and I wouldn't count sponsorships below $100 towards that count). 

I _mostly_ want sponsors that are directly invested in the outcome of what I'm creating. If I am using Rails, Heroku, Leaflet, Mapbox, or doing things related to data modeling, database operations, "production-safe" database stuff, etc, and that is something that would be useful to you to learn about, I'd like you to fund _me_ for _this project_. 

Based off the level of funding, i'll tailor some of my work product in appropriate ways.

Oh, and if it gets at least a few hundred, i'll "test drive" the material at least once or twice, with one or two of you, and update the guide appropriately.

I'll make sure that you can SAIL through this, insanely fast, and build a very close version of what I've built, and know how to modify it and customize it to your own interests. 

It's worth tens of thousands. I'll make whatever I make as accessible as possible to as many people as possible. 


To click back to the current demo, it's available here: https://leaflet-gis-rails-practice.herokuapp.com/.

----------------

I tend to record my work in a style best described as a mix of "daily captain's report" and 

> nearly-incomprehensible strings of thought that make me question my own sanity

## 2022-03-04

some of my favorite times to work on these projects are either late at night, or on airplates (or both). It's odd, sorta, but I don't mind. 

I'm trying to add a big chunk of complexity - working TESTING (AND TDD) into my "move fast and break shit" workflow.

I'm trying to come up with minimum-viable-system-tests to help me make sure I don't eff stuff up, blah blah blah. easier than starting/stopping rails servers, and seeing what localhost is.

Maybe I can write letters to myself ( and remind myself what I'm trying to do next!) by using tests, and pending tests.

Holy cow it'll be great. Imagine tests, organized by FEATURE!!!! HOLY SHIT Jason's onto something, like:

```
when I visit the root page, I see a page with the following items:
  - a login/signup button
  - a list of random recent entries from the movies table

Movies feature:
  - a movie is created by a user
  - with various attributes
  
account_user feature
  - a user is associated with an account
  - all account users have the same privileges

random movie anthology selector feature
- when I visit /anthologies/miuzaki
- I get a list of all miuzaki films

etc?
```

could be useful for scaffolding. 

Anyway, i am going to use rspec going forward on all `rails new` commands...

NVM, I'm gonna try to convert on-the-fly from RSPEC to minitest, because out-of-the-box minitest is great, and scaffolds give me great system tests:

run them with:

```
rails test:system
```

https://blog.appsignal.com/2020/02/12/getting-started-with-system-tests-in-ruby-with-minitest.html is exceptional.

Holy shit, it took a while, but the system tests just fired off! I let go of my computer for a few seconds while the headless browser clicked around. I didn't watch super closely, but it ran a full test.

Lots of failures:

![failures](/images/failures.jpg)

But no sweat. I'll delete most of these, and see if I can just get a basic test passing.

Awesome, just a few minutes later, great progress. Skipped tests:

![failures](/images/skipped.jpg)

Now, this was a copy-paste job from https://github.com/josh-works/polyline-practice/blob/master/test/system/point_of_interests_test.rb#L1, which is auto-generated by scaffold commands.

Cool. `rails test` runs cleanly, I've skipped my janky system tests, lets see if I can TDD my way into a new feature...

https://randomuser.me/

tons of progress. 




## 2022-02-19

Two days later. Been a huge two days. Plumbing problems. Non-abusive treatment problems. But I've made HUGE progress.

I just hop-scotched around a bit figuring this thing out. finally figured out (maybe) what the deal is with the JS `fetch` API. It _might_ be what lets me fetch data from the backend.

Every view that I scaffold comes with a .json file that returns the same data as the view. I can `fetch` it, and build my collections out of that. Not trivial, and not quite the full (modern) Rails way (TM), I dont think, but it's close enough.

I'm just doing:

```javascript
fetch('http://localhost:3000/point_of_interests.json')
  .then(response => response.json())
  .then(data => console.log(data));
```

Almost got it. That didn't work, but this did:

```javascript
var obj;
fetch('https://jsonplaceholder.typicode.com/posts/1')
  .then(res => res.json())
  .then(data => obj = data)
  .then(() => console.log(obj))
```

## 2022-02-17

Phew. Tons of work on this yesterday. Not doing much today, just kinda poking around, thinking what I wanted to do next.

I think I want location input options.

Inspiration:

- https://www.youtube.com/watch?v=yc5kZJserDs
- https://github.com/joemasilotti/railsdevs.com/pull/286


Yes, I'm going to work on `point_of_interest#new`, and get something that gets converted to a latitude/longitude, stored in the DB.



## 2022-02-16
 
 ```
$ rails _7.0.2_ new polyline-practice --database postgresql --css tailwind
```

```
rails g scaffold PointOfInterest name:string latitude:float longitude:float description:text
```
 
```ruby
# seeds.rb, aspirational
name = "intersection in Golden, CO"
description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
latitude =  39.766444,  
longitude = -105.228456
PointOfInterest.create(
  description: description,
  latitude: latitude,
  longitude: longitude
)
```

Then visit `/poi_path/1` and this should have a little pin on a leaflet map. 



That's the plan. Let's add ourselves our standard gems, `pry-rails` and `faker`

ooookay. 

Spent maybe 45 minutes digging into this, quickly, didn't take notes, but I got good stuff accomplished:

1. For starters, source necessary JS/CSS in application.html.erb. That'll make the available everywhere.
2. Copy/paste solid "map" stuff into a view, and it, works.

I referred to lots of my prior art on leaflet, html stuff, and more. God I barely can hold a single thing in my head. 

I'm liking where this is going, though:

![progress](/images/we-have-rendered-an-icon.jpg)

and another 30 minutes, making more progress. Here's what I can get on page-load:

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
# db/seeds.rb # aspirational, but ended up being what I'm using
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

Lets get rid of this favicon i'm rendering: https://josh.works/favicon.ico, which I then swapped out with the favicon.ico file in the `public` directory.

I'd like to use these favicon/icon things:

![icons](/images/icons.jpg)

Oh heck yeah:

![icons](/images/the-change.jpg)


![icons](/images/we-have-icons.jpg)

If no icon given, it'll be the `default` icon, which might be... the easiest .ico i can find. If given, they'll use something.

I like the idea of being able to "tag" the POI w/an icon. maybe multiples, maybe not. 

```ruby
# seeds.rb
PointOfInterest.create(
  description: description,
  latitude: latitude,
  longitude: longitude,
  icon: ''
)
```


OK! making big gains!

First, thanks to https://www.flaticon.com/authors/surang for the icon i'm now using for roundabouts.

-----------

Screaming progress, honestly. Redoing my seeds file in a huge way, _and_ thinking better about coordinates on these things.

_and_ getting better at quickly iterating on data modeling.

I had gone back and forth on adding a `coords` datatype, then googling what to store them as, blah blah blah, postgis, arrays, I'd save an array as a string to the DB, then I remembered seeing some of THAT hell at ThreatSim. 

So, we're just gonna keep adding columns, so we'll have `coords`, `lat`, and `long`. Coords will "flow into" lat/long, which will be the source of truth. 

So, maybe we'll write lat/long straight to the DB (as floats), and leave coords empty.

But sometimes, if all we have are coords, we'll populate lat/long appropriately.

(coords are easier for the user to enter)

Also, check out my updated seeds:

```ruby
# seeds.rb
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
  39.76657266078731,-105.2268147468567"
]
# icons
icons = %i[
  biker-walker-accident-red.png
  car-bike-crash-red.png
  driver-walker-accident-red.png
  wheelchair-confused-red.png
  crossroad.png
]

description = "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect"
PointOfInterest.find_or_create_by(
  description: description,
  coords: coords.sample,
  icon: icons.sample
)

local_intersection = PointOfInterest.find_or_create_by(
  description: "This is a dangerous street for cyclists; drivers get annoyed with cyclists, and vice versa.",
  coords: coords.sample,
  icon: icons.sample
)
p local_intersection

PointOfInterest.find_or_create_by(
  coords: coords.sample,
  description: "Tons of people take this path, but it's unpaved and uneaven. Particularly dangerous at night or when there's snow, or if pushing a stroller.",
  icon: icons.sample
)

PointOfInterest.find_or_create_by(
  coords: coords.sample,
  description: "This could be one of those (many) roundabouts",
  icon: icons.sample
)
```

I actually still want the lat/long I had on earlier iterations, so gonna ctrl-z my way back into what I want:

```ruby
PointOfInterest.find_or_create_by(
  description: "a dangerous intersection (at times) for everyone who uses it. could use a roundabout, if the entire street could accommodate it/drivers knew what to expect",
  latitude: 39.7664442,
  longitude: -105.228456,
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

PointOfInterest.find_or_create_by(
  latitude: 39.764528,
  longitude: -105.227446,
  description: "This could be one of those (many) roundabouts",
  icon: roundabout
)
```

Wow. Huge improvements here. My seeds file is lit, upgraded the `PointOfInterest` model.

Learning to move faster and faster.

Pausing here with icons. When I pick up:

- How to assign icons on object creation, and have them get referenced/made visible in the view. (Roundabout vs. something else)
- gonna have to step up my javascript game here real quick.
- this all feels v. educational, but I'm not capturing enough in Anki. Slash any in Anki.



-----------


# Ideas for extensions along the way: 

## add before_save hook to add lat/long from street address, and vice versa

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

Boom, ended doing that _kinda_ like so:

```ruby
class PointOfInterest < ApplicationRecord
  # need to add validation that coords are what I expect, like:
  # ["",""], or "",""
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
```
## I need MVP flexbox review

struggling to quickly hit the rough layouts I want.

## Basic JS interactivity

lots of this map stuff relies on some asset_pipeline JS, which right now I'm calling directly from the HEAD of the document, but should be in the asset pipeline, maybe?

but I'm also just doing basic DOM manipulation and interactivity stuff. I need to have those quick, in my back pocket.

