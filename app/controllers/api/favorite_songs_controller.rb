class Api::FavoriteSongsController < ApplicationController
  def index
    @songs = Song.all
    render "index.json.jb"
  end

  def show
    @song = Song.find(params[:id])
    render "show.json.jb"
  end

  def create
    @song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year].to_i
    )
    @song.save
    render "show.json.jb"
  end

  def update
    @song = Song.find(params[:id])

    @song.title = params[:title] || @song.title
    @song.album = params[:album] || @song.album
    @song.artist = params[:artist] || @song.artist
    @song.year = params[:year].to_i || @song.year

    @song.save
    render "show.json.jb"
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    render json: { message: "Song #{params[:id]} was deleted."}
  end
end
