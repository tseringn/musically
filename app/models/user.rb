class User < ApplicationRecord
    has_many :plays
    has_many :songs, through: :plays
    has_many :playlists
    has_one_attached :profile_pic
    has_secure_password


    def most_liked
        like=0
        song=Song.first
        self.playlists.each do |pl|
            pl.songs.each { |s|
        if s.likes>like
            like=s.likes
            song=s
        end
        }
        end
        song
    end

    
end
