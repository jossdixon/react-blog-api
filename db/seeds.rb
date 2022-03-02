# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying..."

Post.destroy_all

puts "Seeding..."

Post.create(
  title: 'Cities',
  content: "Think of London, a small city, it's dark, dark in the daytime, the people sleep, sleep in the daytime, if they want to",
  author: 'David'
)

Post.create(
  title: 'French',
  content: "Ce que j'ai fais, ce soir la
Ce qu'elle a dit, ce soir la
Realisant mon espoir
Je me lance, vers la gloire, OK",
  author: 'Tina'
)

Post.create(
  title: "Don't Worry",
  content: "I smell the pine trees and the peaches in the woods
I see the pine cones that fall by the highway
That's the highway that goes to the building
I pick the building that I want to live in",
  author: 'David'
)

puts "Done."
