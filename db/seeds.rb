# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
hero_data = [
  { id: 1, name: "Kamala Khan", super_name: "Ms. Marvel" },
  { id: 2, name: "Doreen Green", super_name: "Squirrel Girl" },
  { id: 3, name: "Gwen Stacy", super_name: "Spider-Gwen" },
  { id: 4, name: "Peter Parker", super_name: "Spider-Man" },
  { id: 5, name: "Bruce Wayne", super_name: "Batman" }
]

hero_data.each do |data|
  Hero.create(
    id: data[:id],
    name: data[:name],
    super_name: data[:super_name]
  )
end
power_data = [
  {name: "Super Strength", description: "Allows superhuman strength" },
  {name: "Telekinesis", description: "Ability to move objects with the mind" },
  {name: "Invisibility", description: "Can become invisible to the naked eye" },
  {name: "Flight", description: "Ability to fly in the air" },
  {name: "Healing Factor", description: "Rapid healing and regeneration" }
]

power_data.each do |data|
  Power.create(
    name: data[:name],
    description: data[:description]
  )
end
