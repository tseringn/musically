class SongPlaylistsController < ApplicationController
    before_action :find_song_playlist, only: [:edit, :update]

    def new
        @song_playlist = SongPlaylist.new
    end

    def create
        @song_playlist = SongPlaylist.create(song_playlist_params)
    end

    def edit
        @songs = Song.all
        @song_playlist = SongPlaylist.find_by(params[:id])
    end

    def update
        @song_playlist.update(song_playlist_params)
        redirect_to playlist_path(@song_playlist.playlist)
    end

    private

    def find_song_playlist
        @song_playlist = SongPlaylist.find(params[:id])
    end

    def song_playlist_params
        params.require(:song_playlist).permit(:song_id, :playlist_id)
    end
end
