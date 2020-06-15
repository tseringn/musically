class Song < ApplicationRecord
    has_many :plays
    has_many :users, through: :plays
    has_many :playlist_songs
    has_many :playlists, through: :playlist_songs
end
