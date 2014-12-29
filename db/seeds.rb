# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mapping = Mapping.create(symbol: "activity", object_type: "Activity")
mapping = Mapping.create(symbol: "endearment", object_type: "Endearment")
template = Pickup.create(text: "Hey, you look like [endearment], let's [activity]!")

Partial.create(type:"Endearment", text: "my future ex-girlfriend")
Partial.create(type:"Endearment", text: "the one and true love of my life")
Partial.create(type:"Endearment", text: "the mother of my future children")
Partial.create(type:"Endearment", text: "the girl my mom warned me about")
Partial.create(type:"Endearment", text: "my kindergarten sweetheart")
Partial.create(type:"Endearment", text: "my elementary school girlfriend")
Partial.create(type: "Activity", text: "go hunt for stashes of Nazi gold")
Partial.create(type: "Activity", text: "fly to Vegas, lose a bunch of money and get married")
Partial.create(type: "Activity", text: "have lots and lots of kids together")
Partial.create(type: "Activity", text: "get into a fight about who keeps the dogs")
Partial.create(type: "Activity", text: "go to the amusement park, I will win you a stuffed puppy")
