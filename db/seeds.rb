# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Artist.create(name: "Alice Cooper", bio: "I was born in a small African village")
# Artist.create(name: "Bob Marley", bio: "What, me? I don't smoke pot")
# Artist.create(name: "Billy Joel", bio: "I just tickle the ivories")

# Genre.create(name: "Rock")
# Genre.create(name: "Reggae")

Song.create(name: "Is This Love", artist_id: 2, genre_id: 2)
Song.create(name: "Piano Man", artist_id: 3, genre_id: 1)
Song.create(name: "Feed My Frankenstein", artist_id: 1, genre_id: 1)
Song.create(name: "One Love", artist_id: 2, genre_id: 2)
Song.create(name: "Redemption Song", artist_id: 3, genre_id: 2)
Song.create(name: "Poison", artist_id: 1, genre_id: 1)
Song.create(name: "Uptown Girl", artist_id: 3, genre_id: 1)
Song.create(name: "She's Always a Woman", artist_id: 3, genre_id:1)