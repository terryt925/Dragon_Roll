# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.delete_all
Anime.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('animes')

demo = User.create!(
  username: 'demo',
  password: 'password'
)



one_piece = Anime.create!(
   title: 'One Piece',
  synopsis: "Gol D Roger was the most powerful man alive. When he was excecuted, he let the world know that he buried everything he has in one place, known as One Piece. Pirates from all around the world set sail looking for the treasure that will turn the world upside down. Luffy, a young man, starts his journey to become the pirate king and obtain the greatest treasure in the world, the One Piece."
)

jujutsu_kaisen = Anime.create!(
  title: "Jujutsu Kaisen",
  synopsis: "Yuji Itadori is a boy with tremendous physical strength, though he lives a completely ordinary high school life. One day, to save a classmate who has been attacked by curses, he eats the finger of Ryomen Sukuna, taking the curse into his own soul. From then on, he shares one body with Ryomen Sukuna. Guided by the most powerful of sorcerers, Satoru Gojo, Itadori is admitted to Tokyo Jujutsu High School, an organization that fights the curses... and thus begins the heroic tale of a boy who became a curse to exorcise a curse, a life from which he could never turn back."
)

my_hero_academia = Anime.create!(
  title: "My Hero Academia",
  synopsis: "Izuku has dreamt of being a hero all his life—a lofty goal for anyone, but especially challenging for a kid with no superpowers. That’s right, in a world where eighty percent of the population has some kind of super-powered “quirk,” Izuku was unlucky enough to be born completely normal. But that’s not enough to stop him from enrolling in one of the world’s most prestigious hero academies."
)

attack_on_titan = Anime.create!(
  title: 'Attack on Titan',
  synopsis: "Known in Japan as Shingeki no Kyojin, many years ago, the last remnants of humanity were forced to retreat behind the towering walls of a fortified city to escape the massive, man-eating Titans that roamed the land outside their fortress. Only the heroic members of the Scouting Legion dared to stray beyond the safety of the walls – but even those brave warriors seldom returned alive. Those within the city clung to the illusion of a peaceful existence until the day that dream was shattered, and their slim chance at survival was reduced to one horrifying choice: kill – or be devoured!"
)

dragon_ball_super = Anime.create!(
  title: 'Dragon Ball Super',
  synopsis: "Goku is a young man obsessed with fighting the strongest around. Goku and his friends aim to test their skills with the strongest in the known universe. What they didn't know was they would be fighting to keep their universe from being destroyed."
)

naruto_shippuden = Anime.create!(
  title: 'Naruto Shippuden',
  synopsis: "Naruto Uzumaki wants to be the best ninja in the land. He's done well so far, but with the looming danger posed by the mysterious Akatsuki organization, Naruto knows he must train harder than ever and leaves his village for intense exercises that will push him to his limits."
)

black_clover = Anime.create!(
  title: 'Black Clover',
  synopsis: "Black Clover is set in a world where people who inhabit it have magical powers. A young man named Asta is born without any magic power, but against all odds, he was given a grimoire. Now that young man is on his journey to become the Wizard King."
)

dr_stone = Anime.create!(
  title: 'Dr Stone',
  synopsis: "Several thousand years after a mysterious phenomenon that turns all of humanity to stone, the extraordinarily intelligent, science-driven boy, Senku Ishigami, awakens. Facing a world of stone and the total collapse of civilization, Senku makes up his mind to use science to rebuild the world. Starting with his super strong childhood friend Taiju Oki, who awakened at the same time, they will begin to rebuild civilization from nothing... Depicting two million years of scientific history from the Stone Age to present day, the unprecedented crafting adventure story is about to begin!"
)

boruto = Anime.create!(
  title: 'Boruto',
  synopsis: "The life of the shinobi is beginning to change. Boruto Uzumaki, son of Seventh Hokage Naruto Uzumaki, has enrolled in the Ninja Academy to learn the ways of the ninja. Now, as a series of mysterious events unfolds, Boruto’s story is about to begin! "
)

demon_slayer = Anime.create!(
  title: 'Demon Slayer',
  synopsis: "It is the Taisho Period in Japan. Tanjiro, a kindhearted boy who sells charcoal for a living, finds his family slaughtered by a demon. To make matters worse, his younger sister Nezuko, the sole survivor, has been transformed into a demon herself. Though devastated by this grim reality, Tanjiro resolves to become a “demon slayer” so that he can turn his sister back into a human, and kill the demon that massacred his family."
)

haikyu = Anime.create!(
  title: 'Haikyu!!',
  synopsis: 'Based off of the original Weekly Shonen Jump manga series from Haruichi Furudate, Haikyu!! is a slice-of-life sports anime revolving around Shoyo Hinata’s love of volleyball. Inspired by a small-statured pro volleyball player, Hinata creates a volleyball team in his last year of middle school. Unfortunately the team is matched up against the "King of the Court" Tobio Kageyama’s team in their first tournament and inevitably lose. After the crushing defeat, Hinata vows to surpass Kageyama After entering high school, Hinata joins the volleyball team only to find that Tobio has also joined.'
)

hxh = Anime.create!(
  title: 'Hunter x Hunter',
  synopsis: 'Gon, a young boy who lives on Whale Island, dreams of becoming a Hunter like his father, who left when Gon was still young.'
)

jojo = Anime.create!(
  title: "JoJo's Bizarre Adventure: Golden Wind",
  synopsis: 'Part 1 - Phantom Blood In ancient Mexico, people of Aztec had prospered. They had historic and strange "Stone Mask". It was a miraculous mask which brings eternal life and the power of authentic ruler. But the mask suddenly disappeared. A long time after that, in late 19th centuries when the thought and life of people were suddenly changing, Jonathan Joestar met with Dio Brando―. They spend time together through boyhood to youth, and the "Stone Mask" brings curious fate to them―.'
)

naruto = Anime.create!(
  title: "Naruto",
  synopsis: "The Village Hidden in the Leaves is home to the stealthiest ninja. But twelve years earlier, a fearsome Nine-tailed Fox terrorized the village before it was subdued and its spirit sealed within the body of a baby boy."
)

fire_force = Anime.create!(
  title: "Fire Force",
  synopsis: "Tokyo is burning, and citizens are mysteriously suffering from spontaneous human combustion all throughout the city! Responsible for snuffing out this inferno is the Fire Force, and Shinra is ready to join their fight. Now, as part of Company 8, he’ll use his devil’s footprints to help keep the city from turning to ash! But his past and a burning secret behind the scenes could set everything ablaze."
)

bleach = Anime.create!(
  title: "Bleach",
  synopsis: "BLEACH follows the story of Ichigo Kurosaki. When Ichigo meets Rukia he finds his life is changed forever."
)

anime_bleach = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/bleach.jpg')
bleach.photo.attach(io: anime_bleach, filename: "bleach.jpg")

anime_fire_force = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/fire_force.jpg')
fire_force.photo.attach(io: anime_fire_force, filename: "fire_force.jpg")

anime_one_piece = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/one_piece.jpg')
one_piece.photo.attach(io: anime_one_piece, filename: "one_piece.jpg")

anime_black_clover = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/black_clover.jpg')
black_clover.photo.attach(io: anime_black_clover, filename: "black_clover.jpg")

anime_dragon_ball_super = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/dbs.jpg')
dragon_ball_super.photo.attach(io: anime_dragon_ball_super, filename: "dbs.jpg")

anime_dr_stone = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/dr_stone.jpg')
dr_stone.photo.attach(io: anime_dr_stone, filename: "dr_stone.jpg")

anime_boruto = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/boruto.jpg')
boruto.photo.attach(io: anime_boruto, filename: "boruto.jpg")

anime_demon_slayer = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/demon_slayer.jpg')
demon_slayer.photo.attach(io: anime_demon_slayer, filename: "demon_slayer.jpg")

anime_haikyu = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/haikyu.jpg')
haikyu.photo.attach(io: anime_haikyu, filename: "haikyu.jpg")
  
anime_hxh = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/hxh.jpg')
hxh.photo.attach(io: anime_hxh, filename: "hxh.jpg")

anime_jojo = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/jojo.jpg')
jojo.photo.attach(io: anime_jojo, filename: "jojo.jpg")

anime_jujutsu_kaisen = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/jujutsu_kaisen.jpg')
jujutsu_kaisen.photo.attach(io: anime_jujutsu_kaisen, filename: "jujutsu_kaisen.jpg")

anime_my_hero_academia = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/my_hero_academia.jpg')
my_hero_academia.photo.attach(io: anime_my_hero_academia, filename: "my_hero_academia.jpg")


anime_naruto_shippuden = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/naruto_shippuden.jpg')
naruto_shippuden.photo.attach(io: anime_naruto_shippuden, filename: "naruto_shippuden.jpg")


anime_naruto = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/naruto.jpg')
naruto.photo.attach(io: anime_naruto, filename: "naruto.jpg")

anime_attack_on_titan = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/attack_on_titan.jpg')
attack_on_titan.photo.attach(io: anime_attack_on_titan, filename: "attack_on_titan.jpg")



