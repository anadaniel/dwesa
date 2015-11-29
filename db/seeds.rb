# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

route = Route.create(name: "Dwesa - Willowvale")
Checkpoint.create([
    { name: "Nature Reserve", weight: 5.0, route: route, position: 1 },
    { name: "General Store / Tavern", weight: 5.0, route: route, position: 2},
    { name: "Mpume School", weight: 5.0, route: route, position: 3},
    { name: "4th Bridge", weight: 5.0, route: route, position: 4},
    { name: "3rd Bridge", weight: 5.0, route: route, position: 5},
    { name: "Nqabara Tourism Center", weight: 5.0, route: route, position: 6},
    { name: "Nqabara School (WiFi) + Clinic", weight: 5.0, route: route, position: 7},
    { name: "2nd Bridge", weight: 5.0, route: route, position: 8},
    { name: "Badi Store (Shop)", weight: 5.0, route: route, position: 9},
    { name: "1st Bridge", weight: 5.0, route: route, position: 10},
    { name: "Willowvale", weight: 5.0, route: route, position: 11}
  ])
