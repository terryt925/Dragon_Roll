# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Anime.delete_all

demo = User.create!(
  username: 'demo',
  password: 'password'
)

black_clover = Anime.create!(
  title: 'Black Clover',
  synopsis: "Black Clover is set in a world where people who inhabit it have magical powers. A young man named Asta is born without any magic power, but against all odds, he was given a grimoire. Now that young man is on his journey to become the Wizard King."
)

one_piece = Anime.create!(
   title: 'One Piece',
  synopsis: "Gol D Roger was the most powerful man alive. When he was excecuted, he let the world know that he buried everything he has in one place, known as One Piece. Pirates from all around the world set sail looking for the treasure that will turn the world upside down. Luffy, a young man, starts his journey to become the pirate king and obtain the greatest treasure in the world, the One Piece."
)

dragon_ball_z = Anime.create!(
  title: 'Dragon Ball Z',
  synopsis: "Goku is a young man obsessed with fighting the strongest around. Goku and his friends aim to test their skills at the renowned, World Tournament. What they didn't know was how they would be fighting to keep the world from being destroyed."
)
  