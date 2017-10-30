# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "dude1@dude.com", password: "password")
User.create(email: "dude2@dude.com", password: "password")
User.create(email: "dude3@dude.com", password: "password")
User.create(email: "dude4@dude.com", password: "password")

Band.create(name: "The Beatles")
Band.create(name: "Queens of the Stone Age")
Band.create(name: "Spice Girls")
Band.create(name: "The XX")

Album.create(title: "Revolver", year: 1966, band_id: 1, live: false)
Album.create(title: "Over The Years And Through The Woods", year: 2005, band_id: 2, live: true)
Album.create(title: "Spice World", year: 1997, band_id: 3, live: false)
Album.create(title: "Rubber Soul", year: 1965, band_id: 1, live: false)
Album.create(title: "I See You", year: 2017, band_id: 4, live: false)
Album.create(title: "Coexist", year: 2012, band_id: 4, live: false)

Track.create(title: "Taxman", album_id: 1, ord: 1, bonus: false, lyrics: "")
Track.create(title: "Eleanor Rigby", album_id: 1, ord: 2, bonus: false, lyrics: "")
Track.create(title: "I'm Only Sleeping", album_id: 1, ord: 3, bonus: false, lyrics: "")
Track.create(title: "Love You To", album_id: 1, ord: 4, bonus: false, lyrics: "")
Track.create(title: "Here, There and Everywhere", album_id: 1, ord: 5, bonus: false, lyrics: "")
Track.create(title: "Yellow Submarine", album_id: 1, ord: 6, bonus: false, lyrics: "")
Track.create(title: "She Said She Said", album_id: 1, ord: 7, bonus: false, lyrics: "")
Track.create(title: "Good Day Sunshine", album_id: 1, ord: 8, bonus: false, lyrics: "")
Track.create(title: "And Your Bird Can Sing", album_id: 1, ord: 9, bonus: false, lyrics: "")
Track.create(title: "For No One", album_id: 1, ord: 10, bonus: false, lyrics: "")
Track.create(title: "Doctor Robert", album_id: 1, ord: 11, bonus: false, lyrics: "")
Track.create(title: "I Want to Tell You", album_id: 1, ord: 12, bonus: false, lyrics: "")
Track.create(title: "Got to Get You into My Life", album_id: 1, ord: 13, bonus: false, lyrics: "")
Track.create(title: "Tomorrow Never Knows", album_id: 1, ord: 14, bonus: false, lyrics: "")

Track.create(title: "Dangerous", album_id: 5, ord: 1, bonus: false, lyrics: "")
Track.create(title: "Say Something Loving", album_id: 5, ord: 2, bonus: false, lyrics: "")
Track.create(title: "Lips", album_id: 5, ord: 3, bonus: false, lyrics: "")
Track.create(title: "A Violent Noise", album_id: 5, ord: 4, bonus: false, lyrics: "")
Track.create(title: "Performance", album_id: 5, ord: 5, bonus: false, lyrics: "")
Track.create(title: "Replica", album_id: 5, ord: 6, bonus: false, lyrics: "")
Track.create(title: "Brave for You", album_id: 5, ord: 7, bonus: false, lyrics: "")
Track.create(title: "On Hold", album_id: 5, ord: 8, bonus: false, lyrics: "")
Track.create(title: "I Dare You", album_id: 5, ord: 9, bonus: false, lyrics: "")
Track.create(title: "Test Me", album_id: 5, ord: 10, bonus: false, lyrics: "")
Track.create(title: "Naive", album_id: 5, ord: 11, bonus: true, lyrics: "")
Track.create(title: "Seasons Run", album_id: 5, ord: 12, bonus: true, lyrics: "")
Track.create(title: "Brave for You", album_id: 5, ord: 13, bonus: true, lyrics: "")
