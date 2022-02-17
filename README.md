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

I tend to record my work in a style best described as "daily captain's report" and 

> nearly-incomprehensible strings of thought that make me question my own sanity



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
  name: name
  ,description: description
  ,latitude: latitude
  ,longitude: longitude
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
