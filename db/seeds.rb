# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Christa", username: "ChristaGammage", password: "boyton")
User.create(name: "Tsering", username: "TseringNorbu", password: "123")

bottom = Song.create(name: "Started From The Bottom", artist: "Drake", genre: "Hip Hop", url: "https://www.youtube.com/embed/RubBzkZzpUA")
hello = Song.create(name: "Hello", artist: "Adele", genre: "Pop", url: "https://www.youtube.com/embed/YQHsXMglC9A")
god = Song.create(name: "God is A Woman", artist: "Ariana Grande", genre: "Pop", url: "https://www.youtube.com/embed/kHLHSlExFis")
april = Song.create(name: "Dear April", artist: "Frank Ocean", genre: "Hip Hop", url: "https://www.youtube.com/embed/pvU4b4N1-QU")
fantazia = Song.create(name: "FANTAZIA", artist: "Roy Blair", genre: "Pop", url: "https://www.youtube.com/embed/WPiLio2oW9c")
go = Song.create(name: "Go", artist: "The Black Keys", genre: "Rock", url: "https://www.youtube.com/embed/wpF5o7GMrgQ")
summer = Song.create(name: "Eternal Summer", artist: "The Strokes", genre: "Rock", url: "https://www.youtube.com/embed/5c3EjeP2x-Q")
boyfriend = Song.create(name: "Boyfriend", artist: "Selena Gomez", genre: "Pop", url: "https://www.youtube.com/embed/tSIk1QvIM2E")
ride = Song.create(name: "Ride with Me", artist: "Pink Sweat$", genre: "Pop", url: "https://www.youtube.com/embed/Nvl90Nc_DzA")

summer_favorites = Playlist.create(title: "Summer Favorites", user_id: User.first.id)
coffeeshop = Playlist.create(title: "Coffeshop Aesthetics", user_id: User.first.id)
mood = Playlist.create(title: "Mood Boosters", user_id: User.last.id)

SongPlaylist.create(song_id: bottom.id, playlist_id: summer.id)
SongPlaylist.create(song_id: hello.id, playlist_id: summer.id)
SongPlaylist.create(song_id: god.id, playlist_id: summer.id)
SongPlaylist.create(song_id: boyfriend.id, playlist_id: summer.id)
SongPlaylist.create(song_id: ride.id, playlist_id: summer.id)
SongPlaylist.create(song_id: fantazia.id, playlist_id: mood.id)
SongPlaylist.create(song_id: april.id, playlist_id: mood.id)
SongPlaylist.create(song_id: summer.id, playlist_id: mood.id)
SongPlaylist.create(song_id: go.id, playlist_id: mood.id)
SongPlaylist.create(song_id: ride.id, playlist_id: mood.id)
SongPlaylist.create(song_id: hello.id, playlist_id: coffeeshop.id)
SongPlaylist.create(song_id: summer.id, playlist_id: coffeeshop.id)
SongPlaylist.create(song_id: boyfriend.id, playlist_id: coffeeshop.id)
SongPlaylist.create(song_id: fantazia.id, playlist_id: coffeeshop.id)
SongPlaylist.create(song_id: god.id, playlist_id: coffeeshop.id)