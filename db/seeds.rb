# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first) 

User.create(
  name: "Harry Potter",
  email: "harry@test.com",
  password: "password",
  password_confirmation: "password",
  profilePicURL: "https://i.pinimg.com/564x/7e/42/9d/7e429d9363116f1d9aa41c27ef4c14c2.jpg"
)

Child.create(
  user_id: 1,
  name: "James Sirius Potter",
  dob: "06/12/2004",
  profile_image: "https://www.hp-lexicon.org/wp-content/uploads/2016/06/dh_spoiler__james_by_hillary_cw.jpg"
)

Milestone.create(
  child_id: 1,
  date: "2005-05-13",
  milestone_category: "Physical",
  title: "First Steps",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

Milestone.create(
  child_id: 1,
  date: "2005-07-23",
  milestone_category: "Cognative",
  title: "tracked mom with eyes",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

Child.create(
  user_id: 1,
  name: "Albus Severus Potter",
  dob: "10/15/2006",
  profile_image: "https://images4.fanpop.com/image/photos/21700000/Albus-Severus-Potter-albus-severus-potter-21757449-400-565.jpg"
)

Milestone.create(
  child_id: 2,
  date: "2007-12-30",
  milestone_category: "Communication",
  title: "First Word - Mama",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

Milestone.create(
  child_id: 2,
  date: "2007-11-02",
  milestone_category: "Physical",
  title: "First Steps",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

User.create(
  name: "Morticia Addams",
  email: "morticia@test.com",
  password: "password",
  password_confirmation: "password",
  profilePicURL: "https://i.etsystatic.com/37901093/r/il/9c5e53/5262424606/il_1588xN.5262424606_pzqt.jpg"

)

Child.create(
  user_id: 2,
  name: "Wednesday Addams",
  dob: "10/13/2006",
  profile_image: "https://ih1.redbubble.net/image.658849057.8483/gbrf,8x10,f,540x540-pad,450x450,f8f8f8.u2.jpg"
)

Milestone.create(
  child_id: 3,
  date: "2007-05-13",
  milestone_category: "Physical",
  title: "Held a Rapier",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

Milestone.create(
  child_id: 3,
  date: "07/13/2007",
  milestone_category: "Communication",
  title: "said Die for the first time",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
)

Child.create(
  user_id: 2,
  name: "Pugsley Addams",
  dob: "10/15/2009",
  profile_image: "https://ih1.redbubble.net/image.658852298.8562/st,small,845x845-pad,1000x1000,f8f8f8.jpg"
)

Milestone.create(
  child_id: 4,
  date: "2001-12-06",
  milestone_category: "Communication",
  title: "First Word - Bomb!",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

Milestone.create(
  child_id: 4,
  date: "2010-06-14",
  milestone_category: "Physical",
  title: "Rolled over - down the stairs",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
)

Favorite.create(
  user_id: 1,
  title: "Choosing Safe Toys",
  link: "https://kidshealth.org/en/parents/safe-toys.html",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing ",
  thumbnail: "https://png.pngtree.com/png-clipart/20230914/original/pngtree-table-toy-vector-png-image_12159785.png"
)

Favorite.create(
  user_id: 2,
  title: "The Magic of Play: How It Inspires & Aids Early Development",
  link: "https://kidshealth.org/en/parents/play-magic.html",
  description: "Lorem Ipsum has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing",
  thumbnail: "https://thumb.ac-illust.com/c9/c9770d434b7b24bc2378eba2e2822b3e_t.jpeg"
)

Reminder.create(
  user_id: 1,
  child_name: "James Sirius Potter",
  category: "Parent Teacher Meeting",
  description: "Meeting with Professor McGonagall -Transfiguration.",
  notes: "Professor shared her concern about James' occasional impatience when it comes to mastering complex spells. Ask her about suggestions, times she or someone else is free to tutor, what he is doing in class well that we can celebrate",
  date: "2015-10-23",
  time: "7:00 PM GMT+1"
)

Reminder.create(
  user_id: 2,
  child_name: "Wednesday Addams",
  category: "Parent Teacher Meeting",
  description: "Meeting with Ms. Grimwood -Potions, and Mr. Ravens -Spellcraft",
  notes: "Ms. Grimwood shared her delight in Wednesday's advanced potion-making skills, citing her penchant for crafting unique, bewitching concoctions. Mr. Ravenclaw, on the other hand, praised Wednesday's insightful contributions to the class discussions on ancient curses and spellcraft. ",
  date: "2022-09-13",
  time: "6:30 PM EST"
)

Photo.create(
  child_id: 1,
  milestone_id: 1,
  link: "https://static.vecteezy.com/system/resources/previews/013/076/840/non_2x/baby-first-steps-vector.jpg",
  description: "So excited that James took his first steps in the living room today!",
  date: "2005-05-13"  
)

Photo.create(
  child_id: 2,
  milestone_id: 3,
  link: "https://c8.alamy.com/comp/2DKEM23/babbling-turquoise-concept-icon-early-speech-baby-talking-toddler-make-sound-childhood-development-idea-thin-line-illustration-vector-isolated-ou-2DKEM23.jpg",
  description: "Albus said Mama today when Genny was snuggling him during his nap!!",
  date: "2007-12-30"  
)

Photo.create(
  child_id: 3,
  milestone_id: 5,
  link: "https://ih1.redbubble.net/image.4567751092.1020/raf,750x1000,075,t,fafafa:ca443f4786.u1.jpg",
  description: "Wednesday showed true proficiency with a rapier today, we are so proud, though the neighbors looked slightly alarmed",
  date: "2007-05-13"  
)

Photo.create(
  child_id: 4,
  milestone_id: 8,
  link: "https://64.media.tumblr.com/tumblr_ma4cyrd3Pe1rafd2eo1_1280.jpg",
  description: "Pugsly took a tumble down the main stairs today, he managed ot crash into both the bear and Lurch - giggling all the while, such a smart boy!",
  date: "2010-06-14"  
)