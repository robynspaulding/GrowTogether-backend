# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  name: "Robyn Spaulding",
  email: "robyn@test.com",
  password: "password",
  password_confirmation: "password",
  profilePicURL: "Robyn.jpg"  
)

User.create(
  name: "Harry Potter",
  email: "harry@test.com",
  password: "password",
  password_confirmation: "password",
  profilePicURL: "the_boy_who_lived.jpg"
)

Child.create(
  user_id: 1,
  name: "James Sirius Potter",
  dob: "06/12/2004",
  profile_image: "image url here"
)

Milestone.create(
  child_id: 1,
  date: "05/13/2005",
  milestone_category: "Physical Milestone",
  title: "First Steps",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

Child.create(
  user_id: 1,
  name: "Albus Severus Potter",
  dob: "10/15/2006",
  profile_image: "image url here"
)

Milestone.create(
  child_id: 2,
  date: "08/23/2007",
  milestone_category: "Language Milestone",
  title: "First Word - Mama",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
)

User.create(
  name: "Morticia Addams",
  email: "morticia@test.com",
  password: "password",
  password_confirmation: "password",
  profilePicURL: "morticia.jpg"

)

Child.create(
  user_id: 2,
  name: "Wednesday Addams",
  dob: "10/13/2006",
  profile_image: "image url here"
)

Milestone.create(
  child_id: 3,
  date: "05/13/2006",
  milestone_category: "Physical Milestone",
  title: "Held a Rapier",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

Child.create(
  user_id: 2,
  name: "Pugsley Addams",
  dob: "10/15/2009",
  profile_image: "image url here"
)

Milestone.create(
  child_id: 4,
  date: "08/23/2010",
  milestone_category: "Language Milestone",
  title: "First Word - Bomb!",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
)