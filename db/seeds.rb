# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

route = Route.create(name: "Willowvale - Dwesa")
Checkpoint.create([
    { name: "Willowvale", weight: 5.0, route: route, position: 1 },
    { name: "Church", weight: 5.0, route: route, position: 2 },
    { name: "School", weight: 5.0, route: route, position: 3 },
    { name: "Bridge", weight: 5.0, route: route, position: 4 },
    { name: "Dwesa", weight: 5.0, route: route, position: 5 }
  ])
