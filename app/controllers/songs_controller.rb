class SongsController < ApplicationController
    before_action :find_song, only: [:like, :show, :edit, :update, :destroy]
    
    def index
        @songs = Song.all
    end

    def like
        @song.add_like
        @song.save
        redirect_to song_path(@song)
    end

    def new
        @song = Song.new
        @songs = Song.all.uniq
        @artists = Song.artists
        @genres = Song.genres
    end

    def create
        @song = Song.create(song_params)
        if @song.valid?
            redirect_to user_path(@song.user)
        else
            flash[:errors] = @song.errors.full_messages
            redirect_to new_song_path
        end
    end

    def index
    end

    def show
        youtube_video @song.url
    end

    def edit
        @songs = Song.all.uniq
        @artists = Song.artists
        @genres = Song.genres
    end

    def update
        @song.update(song_params)
        if @song.valid?
            redirect_to user_path(@song.user)
        else
            flash[:errors] = @song.errors.full_messages
            redirect_to new_song_path
        end
    end

    def destroy
        @song.destroy
        redirect_to songs_path
    end

   

    private

    def find_song
        @song = Song.find(params[:id])
    end

    def song_params
        params.require(:song).permit(:name, :artist, :genre, :favorite)
    end

end
