class ArtistsController < ApplicationController
  def index
    @artists = Artist.all  	
  end
  def show
  	@albums   = Album.where("artists_id = ?", params[:id])  	
  	@artists  = Artist.find(params[:id])
  	@cant_albums = Album.select("count(*) as cant_albums").where("artists_id = ?", params[:id])  	  	
  end
end