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
Episode.delete_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('animes')
ActiveRecord::Base.connection.reset_pk_sequence!('episodes')


demo = User.create!(
  username: 'demo',
  password: 'password'
)

# Anime seeds

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
  synopsis: "After 18 years, we have the newest Dragon Ball story from creator Akira Toriyama. With Majin Buu defeated, Goku has taken a completely new role as...a radish farmer?! With Earth at peace, our heroes have settled into normal lives. But they can’t get too comfortable. Far away, the powerful God of Destruction, Beerus, awakens to a prophecy revealing his demise at the hands of an even more formidable being. When his search for the Saiyan God brings him to Earth, can Goku and his friends take on their strongest foe yet?"
)

naruto_shippuden = Anime.create!(
  title: 'Naruto Shippuden',
  synopsis: "Naruto Uzumaki wants to be the best ninja in the land. He's done well so far, but with the looming danger posed by the mysterious Akatsuki organization, Naruto knows he must train harder than ever and leaves his village for intense exercises that will push him to his limits."
)

black_clover = Anime.create!(
  title: 'Black Clover',
  synopsis: "In a world where magic is everything, Asta and Yuno are both found abandoned at a church on the same day. While Yuno is gifted with exceptional magical powers, Asta is the only one in this world without any. At the age of fifteen, both receive grimoires, magic books that amplify their holder’s magic. Asta’s is a rare Grimoire of Anti-Magic that negates and repels his opponent’s spells. Being opposite but good rivals, Yuno and Asta are ready for the hardest of challenges to achieve their common dream: to be the Wizard King. Giving up is never an option!"
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
  synopsis: 'Gon Freecss is a young boy living on Whale Island. He learns from "Hunter" Kite, that his father, who he was told was dead, is still alive somewhere as a top "Hunter," risking his life to seek unknown items, such as hidden treasures, curiosa, exotic living creatures, etc. Gon decides to become a professional Hunter and leaves the island. To become a Hunter, he must pass the Hunter Examination, where he meets and befriends three other applicants: Kurapika, Leorio and Killua. Can Gon pass this formidable hurdle, the Hunter Examination, to become "the Best Hunter in the World" and eventually meet his father?'
)

jojo = Anime.create!(
  title: "JoJo's Bizarre Adventure: Golden Wind",
  synopsis: 'Part 1 - Phantom Blood In ancient Mexico, people of Aztec had prospered. They had historic and strange "Stone Mask". It was a miraculous mask which brings eternal life and the power of authentic ruler. But the mask suddenly disappeared. A long time after that, in late 19th centuries when the thought and life of people were suddenly changing, Jonathan Joestar met with Dio Brando―. They spend time together through boyhood to youth, and the "Stone Mask" brings curious fate to them―.'
)

naruto = Anime.create!(
  title: "Naruto",
  synopsis: "Twelve years before the start of the series, the Nine-Tails attacked Konohagakure destroying much of the village and taking many lives. The leader of the village, the Fourth Hokage, sacrificed his life to seal the Nine-Tails into a newborn, Naruto Uzumaki. Orphaned by the attack, Naruto was shunned by the villagers, who out of fear and anger, viewed him as the Nine-Tails itself. Though the Third Hokage outlawed speaking about anything related to the Nine-Tails, the children — taking their cues from their parents — inherited the same animosity towards Naruto. In his thirst to be acknowledged, Naruto vowed he would one day become the greatest Hokage the village had ever seen."
)

fire_force = Anime.create!(
  title: "Fire Force",
  synopsis: "Tokyo is burning, and citizens are mysteriously suffering from spontaneous human combustion all throughout the city! Responsible for snuffing out this inferno is the Fire Force, and Shinra is ready to join their fight. Now, as part of Company 8, he’ll use his devil’s footprints to help keep the city from turning to ash! But his past and a burning secret behind the scenes could set everything ablaze."
)

your_name = Anime.create!(
  title: "Your Name",
  synopsis: "Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture.

One day, Mitsuha awakens in a room that is not her own and suddenly finds herself living the dream life in Tokyo—but in Taki's body! Elsewhere, Taki finds himself living Mitsuha's life in the humble countryside. In pursuit of an answer to this strange phenomenon, they begin to search for one another.

Kimi no Na wa. revolves around Mitsuha and Taki's actions, which begin to have a dramatic impact on each other's lives, weaving them into a fabric held together by fate and circumstance."
)

anime_your_name = URI.open('https://dragon-roll-aa-dev.s3-us-west-1.amazonaws.com/your_name.jpg')
your_name.photo.attach(io: anime_your_name, filename: "your_name.jpg")

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


# EPISODE SEEDS



# one piece

one_piece_1 = Episode.create(
  title: "Episode 1",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/lXCWb-hkJp4"
)

one_piece_2 = Episode.create(
  title: "Episode 2",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/9iNOXZA05PA"
)

one_piece_3 = Episode.create(
  title: "Episode 3",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/c6PR9xsNZJM"
)

one_piece_4 = Episode.create(
  title: "Episode 4",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/VKoViDjneHI"
)

one_piece_5 = Episode.create(
  title: "Episode 5",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/XH8YtiGyJe4"
)

one_piece_6 = Episode.create(
  title: "Episode 6",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/zVwEGwX1HYk"
)

one_piece_7 = Episode.create(
  title: "Episode 7",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/27P3wPLxcUs"
)

one_piece_8 = Episode.create(
  title: "Episode 8",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/Z-n-wuP1sjE"
)

one_piece_9 = Episode.create(
  title: "Episode 9",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/fda10_NjxYY"
)

one_piece_10 = Episode.create(
  title: "Episode 10",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/q45IbVQYFmA"
)

one_piece_11 = Episode.create(
  title: "Episode 11",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/TjyFNU5sKhM"
)

one_piece_12 = Episode.create(
  title: "Episode 12",
  anime_id: 1,
  video_link: "https://www.youtube.com/embed/apg-O1WMxIU"
)



# jujutsu_kaisen

jujutsu_kaisen_1 = Episode.create(
  title: "Episode 1",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/iGWyN2Lq36M"
)

jujutsu_kaisen_2 = Episode.create(
  title: "Episode 2",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/_0w5loPnsmw"
)

jujutsu_kaisen_3 = Episode.create(
  title: "Episode 3",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/1_YMejXYur0"
)

jujutsu_kaisen_4 = Episode.create(
  title: "Episode 4",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/Xaqo0YZkeWw"
)

jujutsu_kaisen_5 = Episode.create(
  title: "Episode 5",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/Ep3kYxOfNQc"
)

jujutsu_kaisen_6 = Episode.create(
  title: "Episode 6",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/QAe8aGCZ3wA"
)

jujutsu_kaisen_7 = Episode.create(
  title: "Episode 7",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/sBSUEKeX2VE"
)

jujutsu_kaisen_8 = Episode.create(
  title: "Episode 8",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/_Xrnh8rIFLE"
)

jujutsu_kaisen_9 = Episode.create(
  title: "Episode 9",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/Guc_1dAORcw"
)

jujutsu_kaisen_10 = Episode.create(
  title: "Episode 10",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/f_Bo3D8WnQg"
)

jujutsu_kaisen_11 = Episode.create(
  title: "Episode 11",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/MKh_CaCD2YU"
)

jujutsu_kaisen_12 = Episode.create(
  title: "Episode 12",
  anime_id: 2,
  video_link: "https://www.youtube.com/embed/C4Qp0QXsohA"
)



# My Hero Academia

my_hero_academia_1 = Episode.create(
  title: "Episode 1",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/Sw4Em1wc8es"
)

my_hero_academia_2 = Episode.create(
  title: "Episode 2",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/e6Cw1Ux8wVg"
)

my_hero_academia_3 = Episode.create(
  title: "Episode 3",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/ELJ5ZChwA5U"
)

my_hero_academia_4 = Episode.create(
  title: "Episode 4",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/jCuM1byygqA"
)

my_hero_academia_5 = Episode.create(
  title: "Episode 5",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/Bo8DFMG8nVI"
)

my_hero_academia_6 = Episode.create(
  title: "Episode 6",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/RDGRhHd_n1I"
)

my_hero_academia_7 = Episode.create(
  title: "Episode 7",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/zqwga6pt5zA"
)

my_hero_academia_8 = Episode.create(
  title: "Episode 8",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/jcXYSti7EsA"
)

my_hero_academia_9 = Episode.create(
  title: "Episode 9",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/2J0M0bflxJw"
)

my_hero_academia_10 = Episode.create(
  title: "Episode 10",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/ze6QF9tNEYQ"
)

my_hero_academia_11 = Episode.create(
  title: "Episode 11",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/kGPuubt5X1s"
)

my_hero_academia_12 = Episode.create(
  title: "Episode 12",
  anime_id: 3,
  video_link: "https://www.youtube.com/embed/_8QIcNKYtI0"
)


# attack on titan

attack_on_titan_1 = Episode.create(
  title: "Episode 1",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/tQw3oYUTejs"
)

attack_on_titan_2 = Episode.create(
  title: "Episode 2",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/YK6alpnYuIw"
)

attack_on_titan_3 = Episode.create(
  title: "Episode 3",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/amIv8efqmqU"
)

attack_on_titan_4 = Episode.create(
  title: "Episode 4",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/rgpdRu_1-NI"
)

attack_on_titan_5 = Episode.create(
  title: "Episode 5",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/Eod94wD32Q0"
)

attack_on_titan_6 = Episode.create(
  title: "Episode 6",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/6Dg-49qGjVU"
)

attack_on_titan_7 = Episode.create(
  title: "Episode 7",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/EaGn7HISNQ0"
)

attack_on_titan_8 = Episode.create(
  title: "Episode 8",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/T_NTFF6x3Fk"
)

attack_on_titan_9 = Episode.create(
  title: "Episode 9",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/9YFcmFDHSX4"
)

attack_on_titan_10 = Episode.create(
  title: "Episode 10",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/k4tQbHPoT-c"
)

attack_on_titan_11 = Episode.create(
  title: "Episode 11",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/_3DOU4qzLMc"
)

attack_on_titan_12 = Episode.create(
  title: "Episode 12",
  anime_id: 4,
  video_link: "https://www.youtube.com/embed/Ha3ACZPShzA"
)


# dragon ball super


dragon_ball_super_1 = Episode.create(
  title: "Episode 1",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/9CmnDmZPjcM"
)

dragon_ball_super_2 = Episode.create(
  title: "Episode 2",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/D7CUkZv4R68"
)

dragon_ball_super_3 = Episode.create(
  title: "Episode 3",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/1_2ibm2IktM"
)

dragon_ball_super_4 = Episode.create(
  title: "Episode 4",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/we_gvfSLaH4"
)

dragon_ball_super_5 = Episode.create(
  title: "Episode 5",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/D5rgtNJspCY"
)

dragon_ball_super_6 = Episode.create(
  title: "Episode 6",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/zI81hDdLgqc"
)

dragon_ball_super_7 = Episode.create(
  title: "Episode 7",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/q6doy8BYmqs"
)

dragon_ball_super_8 = Episode.create(
  title: "Episode 8",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/uQoQCv7R1hA"
)

dragon_ball_super_9 = Episode.create(
  title: "Episode 9",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/hsmrnWKvVn0"
)

dragon_ball_super_10 = Episode.create(
  title: "Episode 10",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/T-jfe04T9po"
)

dragon_ball_super_11 = Episode.create(
  title: "Episode 11",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/mWoLt5bUvs4"
)

dragon_ball_super_12 = Episode.create(
  title: "Episode 12",
  anime_id: 5,
  video_link: "https://www.youtube.com/embed/RPchPARcECY"
)


# Naruto Shippuden

naruto_shippuden_1 = Episode.create(
  title: "Episode 1",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/NGNRwcMgrqM"
)

naruto_shippuden_2 = Episode.create(
  title: "Episode 2",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/jIGCh-eXc3k"
)

naruto_shippuden_3 = Episode.create(
  title: "Episode 3",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/tcEnwc0mdRI"
)

naruto_shippuden_4 = Episode.create(
  title: "Episode 4",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/4LvP00uDnm0"
)

naruto_shippuden_5 = Episode.create(
  title: "Episode 5",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/iXeH7emwxwE"
)

naruto_shippuden_6 = Episode.create(
  title: "Episode 6",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/HaMdywkuOmQ"
)

naruto_shippuden_7 = Episode.create(
  title: "Episode 7",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/5lHzzix58Po"
)

naruto_shippuden_8 = Episode.create(
  title: "Episode 8",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/ynZ3IbBdWiQ"
)

naruto_shippuden_9 = Episode.create(
  title: "Episode 9",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/4ipEW4rMuKc"
)

naruto_shippuden_10 = Episode.create(
  title: "Episode 10",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/pTHwunctXlA"
)

naruto_shippuden_11 = Episode.create(
  title: "Episode 11",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/rlKeDJFusl4"
)

naruto_shippuden_12 = Episode.create(
  title: "Episode 12",
  anime_id: 6,
  video_link: "https://www.youtube.com/embed/mBafUDVHGL8"
)


# Black Clover


black_clover_1 = Episode.create(
  title: "Episode 1",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/bucDYBQqWLE"
)

black_clover_2 = Episode.create(
  title: "Episode 2",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/UVkT6XS-bQY"
)

black_clover_3 = Episode.create(
  title: "Episode 3",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/y7F2RY_AaMM"
)

black_clover_4 = Episode.create(
  title: "Episode 4",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/gdedhGhSPpg"
)

black_clover_5 = Episode.create(
  title: "Episode 5",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/RLbHPdCeLAg"
)

black_clover_6 = Episode.create(
  title: "Episode 6",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/1DedgoWMMwg"
)

black_clover_7 = Episode.create(
  title: "Episode 7",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/bqHswO6bJu4"
)

black_clover_8 = Episode.create(
  title: "Episode 8",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/QeFUq2gHo1c"
)

black_clover_9 = Episode.create(
  title: "Episode 9",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/VEA4DHHt588"
)

black_clover_10 = Episode.create(
  title: "Episode 10",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/VIJvTGufho8"
)

black_clover_11 = Episode.create(
  title: "Episode 11",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/aYtVJ7gYIWw"
)

black_clover_12 = Episode.create(
  title: "Episode 12",
  anime_id: 7,
  video_link: "https://www.youtube.com/embed/MORpybHP4po"
)


# dr stone

dr_stone_1 = Episode.create(
  title: "Episode 1",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/SKfor6O-8hs"
)

dr_stone_2 = Episode.create(
  title: "Episode 2",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/O3tWTMMYi4Q"
)

dr_stone_3 = Episode.create(
  title: "Episode 3",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/xoMBViXHckY"
)

dr_stone_4 = Episode.create(
  title: "Episode 4",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/YJ4fMCnMFBk"
)

dr_stone_5 = Episode.create(
  title: "Episode 5",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/gvMH73Y-nLQ"
)

dr_stone_6 = Episode.create(
  title: "Episode 6",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/bTpkLBNM7Ng"
)

dr_stone_7 = Episode.create(
  title: "Episode 7",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/SHL_EvxCjpo"
)

dr_stone_8 = Episode.create(
  title: "Episode 8",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/z6mDuBsQEKk"
)

dr_stone_9 = Episode.create(
  title: "Episode 9",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/NXUImP_D4JY"
)

dr_stone_10 = Episode.create(
  title: "Episode 10",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/zA5fJLP7VN0"
)

dr_stone_11 = Episode.create(
  title: "Episode 11",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/xSQEOccIRfc"
)

dr_stone_12 = Episode.create(
  title: "Episode 12",
  anime_id: 8,
  video_link: "https://www.youtube.com/embed/OxJpExWfeIE"
)


# boruto

boruto_1 = Episode.create(
  title: "Episode 1",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/EdCUezHQERc"
)

boruto_2 = Episode.create(
  title: "Episode 2",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/A-n1-OERU7w"
)

boruto_3 = Episode.create(
  title: "Episode 3",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/Wy0_i7cOj20"
)

boruto_4 = Episode.create(
  title: "Episode 4",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/LAERcb53v54"
)

boruto_5 = Episode.create(
  title: "Episode 5",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/5FabYlfVpjo"
)

boruto_6 = Episode.create(
  title: "Episode 6",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/_V1jcrr2EtI"
)

boruto_7 = Episode.create(
  title: "Episode 7",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/HWa1qF6JZM0"
)

boruto_8 = Episode.create(
  title: "Episode 8",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/gD9eSNf_gdA"
)

boruto_9 = Episode.create(
  title: "Episode 9",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/9udfKOihDKY"
)

boruto_10 = Episode.create(
  title: "Episode 10",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/AskFGpw5Ifo"
)

boruto_11 = Episode.create(
  title: "Episode 11",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/O8NTR1mBc-g"
)

boruto_12 = Episode.create(
  title: "Episode 12",
  anime_id: 9,
  video_link: "https://www.youtube.com/embed/XwvinWYO8wU"
)


# demon slayer

demon_slayer_1 = Episode.create(
  title: "Episode 1",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/Si_J2oUJAkw"
)

demon_slayer_2 = Episode.create(
  title: "Episode 2",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/1Cr607IAL4k"
)

demon_slayer_3 = Episode.create(
  title: "Episode 3",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/TowgLJvsBs4"
)

demon_slayer_4 = Episode.create(
  title: "Episode 4",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/OHb_78X99pY"
)

demon_slayer_5 = Episode.create(
  title: "Episode 5",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/O0g4rpjFizk"
)

demon_slayer_6 = Episode.create(
  title: "Episode 6",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/7xkFC2T-CuU"
)

demon_slayer_7 = Episode.create(
  title: "Episode 7",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/83z6jx4Lr3U"
)

demon_slayer_8 = Episode.create(
  title: "Episode 8",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/WcW28A5keDA"
)

demon_slayer_9 = Episode.create(
  title: "Episode 9",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/e9BCFlcog7Y"
)

demon_slayer_10 = Episode.create(
  title: "Episode 10",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/Z7qniGEcRnA"
)

demon_slayer_11 = Episode.create(
  title: "Episode 11",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/XI8JhyoA8VI"
)

demon_slayer_12 = Episode.create(
  title: "Episode 12",
  anime_id: 10,
  video_link: "https://www.youtube.com/embed/sv8fzznqXK0"
)


# haikyu!!

haikyu_1 = Episode.create(
  title: "Episode 1",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/rJFZ5rrD6mE"
)

haikyu_2 = Episode.create(
  title: "Episode 2",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/dYU96jRGTVw"
)

haikyu_3 = Episode.create(
  title: "Episode 3",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/Kzxtdf-vqhk"
)

haikyu_4 = Episode.create(
  title: "Episode 4",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/fRbaDZyD8is"
)

haikyu_5 = Episode.create(
  title: "Episode 5",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/LduCUqqHew0"
)

haikyu_6 = Episode.create(
  title: "Episode 6",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/Rz_WwJc3WPs"
)

haikyu_7 = Episode.create(
  title: "Episode 7",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/Xf7lyjUF9n0"
)

haikyu_8 = Episode.create(
  title: "Episode 8",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/dQ1M0wh0mZA"
)

haikyu_9 = Episode.create(
  title: "Episode 9",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/2RENGrAO3Ao"
)

haikyu_10 = Episode.create(
  title: "Episode 10",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/gJLF0Wa1G6U"
)

haikyu_11 = Episode.create(
  title: "Episode 11",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/j3JuAf-G92A"
)

haikyu_12 = Episode.create(
  title: "Episode 12",
  anime_id: 11,
  video_link: "https://www.youtube.com/embed/p_He7tkeb24"
)


# hunter x hunter

hunter_x_hunter_1 = Episode.create(
  title: "Episode 1",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/6oPCI2-mwKI"
)

hunter_x_hunter_2 = Episode.create(
  title: "Episode 2",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/MCNpY7Yo2o4"
)

hunter_x_hunter_3 = Episode.create(
  title: "Episode 3",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/BUmq2KvKvQw"
)

hunter_x_hunter_4 = Episode.create(
  title: "Episode 4",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/2BjSNRNSHg4"
)

hunter_x_hunter_5 = Episode.create(
  title: "Episode 5",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/5HTUa1rLOSs"
)

hunter_x_hunter_6 = Episode.create(
  title: "Episode 6",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/mFO-XIc9b-g"
)

hunter_x_hunter_7 = Episode.create(
  title: "Episode 7",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/Ol9HFQsmW5Q"
)

hunter_x_hunter_8 = Episode.create(
  title: "Episode 8",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/PdpEJytRqrk"
)

hunter_x_hunter_9 = Episode.create(
  title: "Episode 9",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/_pu2RYaRSZI"
)

hunter_x_hunter_10 = Episode.create(
  title: "Episode 10",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/nYPeX0Cw5uw"
)

hunter_x_hunter_11 = Episode.create(
  title: "Episode 11",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/4rk2vvNOH8E"
)

hunter_x_hunter_12 = Episode.create(
  title: "Episode 12",
  anime_id: 12,
  video_link: "https://www.youtube.com/embed/6-jeuCauDEw"
)


# jojo

jojo_1 = Episode.create(
  title: "Episode 1",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/H9vCggXAkEw"
)

jojo_2 = Episode.create(
  title: "Episode 2",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/rr5ys6deAaw"
)

jojo_3 = Episode.create(
  title: "Episode 3",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/jB_sG51B3zA"
)

jojo_4 = Episode.create(
  title: "Episode 4",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/7bspT6NonQs"
)

jojo_5 = Episode.create(
  title: "Episode 5",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/qo13zGL2Vcs"
)

jojo_6 = Episode.create(
  title: "Episode 6",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/3p46R_5j_PU"
)

jojo_7 = Episode.create(
  title: "Episode 7",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/Pavv_E2Uss8"
)

jojo_8 = Episode.create(
  title: "Episode 8",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/CQFDsWTWtCQ"
)

jojo_9 = Episode.create(
  title: "Episode 9",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/_GVilhxrAk4"
)

jojo_10 = Episode.create(
  title: "Episode 10",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/nqPiD6OnsUU"
)

jojo_11 = Episode.create(
  title: "Episode 11",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/2_bjO9lNCzM"
)

jojo_12 = Episode.create(
  title: "Episode 12",
  anime_id: 13,
  video_link: "https://www.youtube.com/embed/ai_Ga6JjiGs"
)


# naruto

naruto_1 = Episode.create(
  title: "Episode 1",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/i8kf0-QqnR4"
)

naruto_2 = Episode.create(
  title: "Episode 2",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/08gd5WqBy_4"
)

naruto_3 = Episode.create(
  title: "Episode 3",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/zd44o_irLgo"
)

naruto_4 = Episode.create(
  title: "Episode 4",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/Amr07IIdre4"
)

naruto_5 = Episode.create(
  title: "Episode 5",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/er9DB8kN4HE"
)

naruto_6 = Episode.create(
  title: "Episode 6",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/SxruXNQoq9w"
)

naruto_7 = Episode.create(
  title: "Episode 7",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/D0rD7926kWk"
)

naruto_8 = Episode.create(
  title: "Episode 8",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/4D0ZPRZnBEY"
)

naruto_9 = Episode.create(
  title: "Episode 9",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/LfZHVFR5i7k"
)

naruto_10 = Episode.create(
  title: "Episode 10",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/I8OuDcffq6k"
)

naruto_11 = Episode.create(
  title: "Episode 11",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/HukT_Wqwf_c"
)

naruto_12 = Episode.create(
  title: "Episode 12",
  anime_id: 14,
  video_link: "https://www.youtube.com/embed/etbzFm7eJM8"
)


# fire force

fire_force_1 = Episode.create(
  title: "Episode 1",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/bS1panhn2CM"
)

fire_force_2 = Episode.create(
  title: "Episode 2",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/zQ3iP4oAEyU"
)

fire_force_3 = Episode.create(
  title: "Episode 3",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/BoKZpboZuYA"
)

fire_force_4 = Episode.create(
  title: "Episode 4",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/eMew9QvGuWg"
)

fire_force_5 = Episode.create(
  title: "Episode 5",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/-QOJ5U2fEuI"
)

fire_force_6 = Episode.create(
  title: "Episode 6",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/6HyFX5QRsVg"
)

fire_force_7 = Episode.create(
  title: "Episode 7",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/LStzSDhMmxU"
)

fire_force_8 = Episode.create(
  title: "Episode 8",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/ZZanjiyznQw"
)

fire_force_9 = Episode.create(
  title: "Episode 9",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/WrjAosd7t1U"
)

fire_force_10 = Episode.create(
  title: "Episode 10",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/2RT1ow9dNhQ"
)

fire_force_11 = Episode.create(
  title: "Episode 11",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/I2S2xEOqr20"
)

fire_force_12 = Episode.create(
  title: "Episode 12",
  anime_id: 15,
  video_link: "https://www.youtube.com/embed/gbStjm5VoFo"
)


# fire force

your_name_1 = Episode.create(
  title: "Full Movie",
  anime_id: 16,
  video_link: "https://www.youtube.com/embed/aZiHVkZ9Yps"
)

your_name_2 = Episode.create(
  title: "Trailer",
  anime_id: 16,
  video_link: "https://www.youtube.com/embed/s0wTdCQoc2k"
)

your_name_3 = Episode.create(
  title: "Best Moments",
  anime_id: 16,
  video_link: "https://www.youtube.com/embed/xHp9r13xaNE"
)

your_name_4 = Episode.create(
  title: "OST",
  anime_id: 16,
  video_link: "https://www.youtube.com/embed/a2GujJZfXpg"
)

