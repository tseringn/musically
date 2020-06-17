# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Play.delete_all
Song.delete_all
Playlist.delete_all



User.create(name: "Christa", username: "ChristaGammage", password: "boyton")
User.create(name: "Tsering", username: "TseringNorbu", password: "123")

bottom = Song.create(name: "Started From The Bottom", artist: "Drake", genre: "Hip Hop", url: "https://www.youtube.com/watch?v=RubBzkZzpUA")
hello = Song.create(name: "Hello", artist: "Adele", genre: "Pop", url: "https://www.youtube.com/watch?v=YQHsXMglC9A")
god = Song.create(name: "God is A Woman", artist: "Ariana Grande", genre: "Pop", url: "https://www.youtube.com/watch?v=kHLHSlExFis")
april = Song.create(name: "Dear April", artist: "Frank Ocean", genre: "Hip Hop", url: "https://www.youtube.com/watch?v=pvU4b4N1-QU")
fantazia = Song.create(name: "FANTAZIA", artist: "Roy Blair", genre: "Pop", url: "https://www.youtube.com/watch?v=WPiLio2oW9c")
go = Song.create(name: "Go", artist: "The Black Keys", genre: "Rock", url: "https://www.youtube.com/watch?v=wpF5o7GMrgQ")
summer = Song.create(name: "Eternal Summer", artist: "The Strokes", genre: "Rock", url: "https://www.youtube.com/watch?v=5c3EjeP2x-Q")
boyfriend = Song.create(name: "Boyfriend", artist: "Selena Gomez", genre: "Pop", url: "https://www.youtube.com/watch?v=tSIk1QvIM2E")
available = Song.create(name: "Available", artist: "Justin Bieber", genre: "Pop", url: "https://www.youtube.com/watch?v=P83pDFnoZnY")
lonely = Song.create(name: "Mr. Lonely", artist: "Midland", genre: "Country", url: "https://www.youtube.com/watch?v=T4bvrywf0xg")
where = Song.create(name: "Where or When", artist: "Wynton Marsalis", genre: "Jazz", url: "https://www.youtube.com/watch?v=9hKnP1WfsjE")
nada = Song.create(name: "Mas Que Nada", artist: "Sergio Mendes & Brasil '66", genre: "Latin", url: "https://www.youtube.com/watch?v=05w5ch9l6zI")
ride = Song.create(name: "Ride With Me", artist: "Pink Sweat$", genre: "Pop", url: "https://www.youtube.com/watch?v=Nvl90Nc_DzA")

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