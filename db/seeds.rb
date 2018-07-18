# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all #user seeds
u1 = User.create :email => 'shelley@ga.co', :password => 'chicken', :country => 'China', :admin => true
u2 = User.create :email => 'david@ga.co', :password => 'chicken', :country => 'Cambodia'
u3 = User.create :email => 'joel@ga.co', :password => 'chicken', :country => 'Antarctica'
u4 = User.create :email => 'john@ga.co', :password => 'chicken', :country => 'Australia'

Game.destroy_all #game seeds
g1 = Game.create :title => 'Borderlands 2', :genre => 'Action RPG', :developer => '2K games', :image => 'https://downloads.2kgames.com/2k/staging/datastore/1017-borderlands_bg_gamepage_2_FLAT.jpg'
g2 = Game.create :title => 'Diablo III', :genre => 'Action RPG', :developer => 'Blizzard', :image => 'https://i2.wp.com/aggronaut.com/wp-content/uploads/2017/01/Diablo-III-2017-01-08-23-39-56-42.jpg?w=1760'
g3 = Game.create :title => 'Red Dead Redemption', :genre => 'Action Adventure', :developer => 'Rockstar', :image => 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Red_Dead_Redemption.jpg/220px-Red_Dead_Redemption.jpg'
g4 = Game.create :title => 'Grand Theft Auto V', :genre => 'Action Adventure', :developer => 'Rockstar', :image => 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a5/Grand_Theft_Auto_V.png/220px-Grand_Theft_Auto_V.png'
g5 = Game.create :title => 'The Witcher III', :genre => 'Action Adventure', :developer => 'CD Projekt', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0Vy9qb56ZdrNQa5bUIaK7m8wB3P5cY9SSU-FhGIQa8twSM5MAUA'
g6 = Game.create :title => 'Banished', :genre => 'Simulation', :developer => 'Shining Rock Software', :image => 'https://upload.wikimedia.org/wikipedia/en/thumb/6/65/Banished_logo.jpg/220px-Banished_logo.jpg'
g7 = Game.create :title => 'Terraria', :genre => 'Survival', :developer => 'Relogic', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYSUEHocqwfwY-RKfHHQf-2ZVVF8AGUB-jZrvUI5rleT5Og1GlpQ'

List.destroy_all #list seeds
l1 = List.create :name => 'Better with friends', :public => true, :description => "There are some games out there that just aren't the same when you play by yourself. Maybe you need to have a friend to watch your back. Maybe you need to have a friend that you can stab in their back. Either way, mirth is awaiting those that gather friends to play these games"
l2 = List.create :name => 'Game within a game', :public => true, :description => "Kinder Eggs. Peanut Butter Cups. Jelly Donuts. All great things stuffed with other great things. Like a mighty turducken, this award celebrates the best mini game hidden within another game."
l3 = List.create :name => 'Test of Time', :public => true, :description => "This list contains all the games that is just as good today as the day you first played it. Newer games may come out, but it doesn’t matter…you’ll always come back to play this one."

#associations
#########################################################################################

#lists and games
l1.games << g1 << g2
l2.games << g4 << g5
l3.games << g1 << g5

#users and lists
u1.lists << l1 << l2
u2.lists << l2 << l1
u3.lists << l3 << l2
u4.lists << l1 << l3
