
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

