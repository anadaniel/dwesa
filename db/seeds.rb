# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

route = Route.create(name: "Willowvale - Dwesa")
Checkpoint.create([
    { name: "Willowvale", weight: 5.0, route: route, km: 1.0 },
    { name: "Church", weight: 5.0, route: route, km: 2.0 },
    { name: "School", weight: 5.0, route: route, km: 3.0 },
    { name: "Bridge", weight: 5.0, route: route, km: 4.0 },
    { name: "Dwesa", weight: 5.0, route: route, km: 5.0 }
  ])
