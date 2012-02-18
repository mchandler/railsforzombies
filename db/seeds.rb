# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Zombie.destroy_all

Zombie.create([
  {name: "Ash", graveyard: "Glen Haven Memorial Cemetary"},
  {name: "Bob", graveyard: "Chapel Hills Cemetary"},
  {name: "Jim", graveyard: "Benny Hills Memorial"}
  ])
  
ash_zombie = Zombie.find_by_name("Ash")

Weapon.destroy_all

Weapon.create([
  {name: "Hammer", strength: 1, zombie: ash_zombie}
  ])
  
Tweet.destroy_all

Tweet.create([
  {status: "I sure do like Rails", zombie: ash_zombie},
  {status: "I sure do hate ColdFusion", zombie: ash_zombie},
  {status: "Your eyelids taste like bacon", zombie: ash_zombie},
  {status: "Thanks for the fish!", zombie: ash_zombie}
  ])