# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Child.create(
  user_id: 1,
  milestone_category: 1,
  name: "Jane Smith",
  dob: "10/12/2015",
  profile_image: "image url here"
)