# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Neighborhood.create(name: "Ditmas Park", rent: 2165, park: false, activities: false, commute: 30, architecture: "Victorian")
Neighborhood.create(name: "Greenpoint", rent: 2683, park: false, activities: true, commute: 26, architecture: "Brownstone")
Neighborhood.create(name: "Williamsburg", rent: 3281, park: false, activities: true, commute: 15, architecture: "Modern")
Neighborhood.create(name: "Bedford Stuyvesant", rent: 2042, park: false, activities: false, commute: 36, architecture: "Brownstone")
Neighborhood.create(name: "Park Slope", rent: 2536, park: true, activities: true, commute: 32, architecture: "Brownstone")
Neighborhood.create(name: "Prospect Heights", rent: 2450, park: true, activities: true, commute: 25, architecture: "Brownstone")
Neighborhood.create(name: "Brooklyn Heights", rent: 3080, park: false, activities: false, commute: 20, architecture: "Brownstone")
Neighborhood.create(name: "Clinton Hill", rent: 2465, park: false, activities: false, commute: 27, architecture: "Brownstone")


Neighborhood.create(name: "Delete this one", rent: 9000, park: false, activities: false, commute: 27, architecture: "None")
