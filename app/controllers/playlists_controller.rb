class PlaylistsController < ApplicationController
<<<<<<< HEAD
    
=======
    before_action :find_playlist, only: [:show, :update, :edit, :destroy]

    def index
        @playlists = Playlist.all
    end

    def show
        
    end

    def edit

    end

    def update
    end

    def new
        @playlist = Playlist.new
        @users = User.all.uniq
    end

    def create
        @playlist = Playlist.create(playlist_params)
        SongPlaylist.create(playlist_id: @playlist.id)
        redirect_to playlists_path
    end

    def destroy
        @song.destroy
        redirect_to songs_path
    end

    private

    def playlist_params
        params.require(:playlist).permit(:title, :user_id)
    end

    def find_playlist
        @playlist = Playlist.find(params[:id])
    end
>>>>>>> d9f99d78b3959011f7f8889fc0b26802e5db0450
end
