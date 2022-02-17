
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

