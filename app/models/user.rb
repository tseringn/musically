class User < ApplicationRecord
    has_many :plays
    has_many :songs, through: :plays
    has_many :playlists
    has_one_attached :profile_pic
    has_secure_password
end
