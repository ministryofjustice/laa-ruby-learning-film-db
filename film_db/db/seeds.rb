# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


teams = Team.create!([
  {name: 'Legal Aid team'},
  {name: 'Central Digital'},
  {name: 'HMCTS'}])

users = User.create!([
  {name: 'Stephen Richards', email: 'stephen@stephenrichards.eu', password: 'password', team: teams.first},
  {name: 'Larry Adler', email: 'larry.adler@stephenrirchards.eu', password: 'password', team: teams.first},
  {name: 'Lance Armstrong', email: 'lance@stephenrirchards.eu', password: 'password', team: teams.first},
  {name: 'Charles Dickens', email: 'charles@stephenrirchards.eu', password: 'password', team: teams[1]},
  {name: 'Celine Dion', email: 'celine@stephenrirchards.eu', password: 'password', team: teams[1]},
  {name: 'Helen Mirren', email: 'helen@stephenrirchards.eu', password: 'password', team: teams.last},
  {name: 'Hayley Mills', email: 'hayley@stephenrirchards.eu', password: 'password', team: teams.last}])

films =
  [
    ['Alien', 'In space, no-one can hear you scream'],
    ["Ferris Bueller's Day Off", "One man's struggle to take it easy"],
    ["Ghostbusters", "Who ya gonna call?"],
    ["Jaws", "You'll never go in the water again"],
    ["The Fly", "Be Afraid. Be very afraid"],
    ["Chicken Run", "Escape, or die frying"],
    ["The Big Lebowski", "Her life was in their hands. Now her toe is in the mail"],
    ["Alien vs. Predator","Whoever wins, we lose."],
    ["Alien3","The bitch is back"],
    ["Arachnophobia","Eight legs, two fangs, and an attitude"],
    ["Armageddon","Earth. It was fun while it lasted"],
    ["Army of Darkness","Trapped in time. Surrounded by evil. Low on gas"],
    ["Boogie Nights","Everyone has one special thing"],
    ["Buffalo Soldiers","War is hell … but peace is f*#!%!! boring"],
    ["Catch Me If You Can","The true story of a real fake"],
    ["Christmas Vacation","Yule crack up"],
    ["Clerks", "Just because they serve you doesn't mean they like you"],
    ["Cool Runnings", "One dream. Four Jamaicans. Twenty below zero"],
    ["Dazed and Confused", "See it with a bud"],
    ["Dude, Where's My Car?", "After a night they can't remember comes a day they'll never forget"],
    ["Dumb and Dumber", "For Harry and Lloyd, every day is a no-brainer"],
    ["Edward Scissorhands", "His story will touch you, even though he can't"],
    ["Erin Brockovich", "She brought a small town to its feet and a huge corporation to its knees"]
  ]

num_users = users.size
films.each_with_index do |film, i|
  index = i % num_users
  Film.create!(title: film.first, tagline: film.last, user: users[index] )
end
