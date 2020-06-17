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

    # def most_liked
    #     self.playlists.each do |playlist|
    #         playlist.songs.max_by do |song|
    #             song.likes
    #         end
    #     end
    # end
                
end
